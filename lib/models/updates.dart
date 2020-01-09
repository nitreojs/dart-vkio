import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../vk.dart';
import '../contexts/main.dart';
import '../handlers.dart';

class ResponseMode {
  static const int ATTACHMENT = 2;
  static const int EXTENDED = 8;
  static const int PTS = 32;
  static const int EXTENDED_EXTRA = 64;
  static const int RANDOM_ID = 128;

  ResponseMode._();
}

const int POLLING_VERSION = 3;
const String NEED_RESTART = 'NEED_RESTART';
const int DEFAULT_MODE = ResponseMode.ATTACHMENT |
    ResponseMode.EXTENDED |
    ResponseMode.EXTENDED_EXTRA;

RegExp ATTACHMENT_ID_RE = RegExp(r'attach(?<id>\d+)(?:_(?<type>type)|$)');

class Updates {
  final VK _vk;
  bool isStarted = false;
  String _url;
  String _ts = '0';
  int _restarted = 0;
  String _lastEventId;
  int _lastMessageId = 0;

  OnNewMessageHandler onNewMessage = (context) async {};
  OnEditMessageHandler onEditMessage = (context) async {};
  OnReplyMessageHandler onReplyMessage = (context) async {};
  OnAllowMessageHandler onAllowMessage = (context) async {};
  OnDenyMessageHandler onDenyMessage = (context) async {};

  Updates(VK vk) : _vk = vk;

  @override
  String toString() {
    return 'Updates';
  }

  void handleContext(Map<String, dynamic> update) async {
    switch (update['type']) {
      case 'message_new':
        final context = MessageContext(_vk, update);

        await onNewMessage(context);

        break;
      case 'message_edit':
        final context = MessageEditContext(_vk, update);

        await onEditMessage(context);

        break;
      case 'message_reply':
        final context = MessageReplyContext(_vk, update);

        await onReplyMessage(context);

        break;
      case 'message_allow':
        final context = MessageAllowContext(_vk, update);

        await onAllowMessage(context);

        break;
      case 'message_deny':
        final context = MessageDenyContext(_vk, update);

        await onDenyMessage(context);

        break;
    }
  }

  void handleUserContext(List<dynamic> update) async {
    switch (update[0]) {
      // new message
      case 4:
        var rawMessage = await _vk.api.messages.getById({
          'message_ids': update[1],
        });

        Map<String, dynamic> actualMessage = rawMessage['items'][0];

        final context = MessageContext(_vk, {
          'object': {'message': actualMessage}
        });

        await onNewMessage(context);

        break;
    }
  }

  Future<void> start() async {
    if (_vk.options['token'] == null) {
      throw 'Token is not defined';
    }

    if (_vk.options['pollingGroupId'] == null) {
      try {
        var group = await _vk.api.groups.getById();

        _vk.options['pollingGroupId'] = group[0]['id'];
      } catch (e) {
        rethrow;
      }
    }

    await startPolling();
  }

  Future<void> stop() async {
    isStarted = false;
  }

  Future<void> startPolling() async {
    if (isStarted) {
      throw 'Polling is already started';
    }

    int pollingGroupId = _vk.options['pollingGroupId'];
    var isGroup = pollingGroupId != null;

    isStarted = true;

    try {
      if (!isGroup && _vk.options['userId'] == 0) {
        var response = await _vk.api.users.get();
        Map<String, dynamic> user = response[0];

        _vk.options['userId'] = user['id'];
      }

      var response = isGroup
          ? await _vk.api.groups.getLongPollServer({
              'group_id': pollingGroupId,
            })
          : await _vk.api.messages.getLongPollServer({
              'lp_version': POLLING_VERSION,
            });

      String key = response['key'];
      String server = response['server'];
      var pollingURL = isGroup ? server : 'https://$server';
      var ts = '${response['ts']}';

      _ts = ts;

      var params = {
        'key': key,
        'act': 'a_check',
        'wait': '25',
        'mode': '$DEFAULT_MODE',
        'version': '$POLLING_VERSION',
        'ts': _ts,
      };

      var searchParams = '';

      params.forEach(
        (key, value) {
          searchParams += '$key=$value&';
        },
      );

      _url = '$pollingURL?$searchParams';

      startFetchLoop();
    } catch (e) {
      isStarted = false;

      throw e;
    }
  }

  Future<void> startFetchLoop() async {
    try {
      while (isStarted) {
        await fetchUpdates();
      }
    } catch (e) {
      print(e);

      Duration pollingWait = _vk.options['pollingWait'];
      int pollingAttempts = _vk.options['pollingAttempts'];

      if (e is Map &&
          e['code'] != NEED_RESTART &&
          _restarted < pollingAttempts) {
        _restarted += 1;

        await sleep(Duration(seconds: 3));

        startFetchLoop();

        return;
      }

      while (isStarted) {
        try {
          await stop();
          await start();

          break;
        } catch (e) {
          isStarted = true;

          await sleep(pollingWait);
        }
      }
    }
  }

  Future<void> fetchUpdates() async {
    var response = await http.get(
      _url,
      headers: {
        'connection': 'keep-alive',
      },
    );

    var json = jsonDecode(response.body);

    if (json['failed'] != null) {
      if (json['failed'] == 1) {
        _ts = '${json['ts']}';

        return;
      }

      _ts = '0';

      throw ({
        'code': NEED_RESTART,
        'description': 'The server has failed',
      });
    }

    String jsonTs = '${json['ts']}';

    if (_ts == jsonTs) return;

    _restarted = 0;
    _ts = jsonTs;

    List updates = json['updates'];

    if (_lastEventId != null) {
      int index = updates.indexWhere(
        (e) => e['event_id'] == _lastEventId,
      );

      updates = [...updates.skip(index + 1)];
    }

    if (_lastMessageId != null) {
      int index = updates.indexWhere(
        (e) => e[0] < 6 && e[1] == _lastMessageId,
      );

      updates = [...updates.skip(index + 1)];
    }

    bool isUser = updates[0] is List;

    if (!isUser) {
      _lastEventId = updates.last['event_id'];
    }

    updates.forEach((update) {
      if (update[0] < 6) {
        if (update[1] > _lastMessageId) {
          _lastMessageId = update[1];
        }
      }

      return isUser ? handleUserContext(update) : handleContext(update);
    });
  }
}
