import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../vk.dart';
import '../contexts/main.dart';

class ResponseMode {
  static const int ATTACHMENT = 2;
  static const int EXTENDED = 8;
  static const int PTS = 32;
  static const int EXTENDED_EXTRA = 64;
  static const int RANDOM_ID = 128;

  ResponseMode._();
}

typedef OnNewMessageHandler = Future<dynamic> Function(MessageContext context);

const int POLLING_VERSION = 3;
const String NEED_RESTART = 'NEED_RESTART';
const int DEFAULT_MODE = ResponseMode.ATTACHMENT |
    ResponseMode.EXTENDED |
    ResponseMode.EXTENDED_EXTRA;

class Updates {
  final VK _vk;
  bool isStarted = false;
  String _url;
  String _ts = '0';
  int _restarted = 0;
  int _pts = 0;
  String _lastEventId;

  OnNewMessageHandler onNewMessage;

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
    bool isGroup = pollingGroupId != null;

    isStarted = true;

    try {
      var response = isGroup
          ? await _vk.api.groups.getLongPollServer({
              'group_id': pollingGroupId,
            })
          : await _vk.api.messages.getLongPollServer({
              'lp_version': POLLING_VERSION,
            });

      String key = response['key'];
      String server = response['server'];
      String pollingURL = isGroup ? server : 'https://$server';
      String ts = response['ts'];

      _ts = ts;

      var params = {
        'key': key,
        'act': 'a_check',
        'wait': '25',
        'mode': '$DEFAULT_MODE',
        'version': '$POLLING_VERSION',
        'ts': _ts,
      };

      String searchParams = '';

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
        _ts = json['ts'];

        return;
      }

      _ts = '0';

      throw ({
        'code': NEED_RESTART,
        'description': 'The server has failed',
      });
    }

    String jsonTs = json['ts'];

    if (_ts == jsonTs) return;

    _restarted = 0;
    _ts = jsonTs;

    if (json['pts'] != null) _pts = int.parse(json['pts']);

    List updates = json['updates'];

    if (_lastEventId != null) {
      int index = updates.indexWhere(
        (e) => e['event_id'] == _lastEventId,
      );

      updates = [...updates.skip(index + 1)];
    }

    _lastEventId = updates.last['event_id'];

    updates.forEach((update) => handleContext(update));
  }
}
