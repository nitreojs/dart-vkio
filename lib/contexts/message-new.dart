import 'dart:convert';
// import 'package:dio/dio.dart';

import '../vk.dart';
import 'context.dart';

class MessageContext extends Context {
  Map<String, dynamic> _message;
  Map<String, dynamic> payload;
  VK _vk;

  MessageContext(VK vk, Map<String, dynamic> update) : super(update['type']) {
    payload = update['object'];
    _message = payload['message'];
    _vk = vk;
  }

  int get id => _message['id'];
  int get conversationMessageId => _message['conversation_message_id'];
  int get senderId => _message['from_id'];
  int get createdAt => _message['date'];
  int get peerId => _message['peer_id'];
  int get randomId => _message['random_id'];
  int get eventMemberId => _message['action']['member_id'];
  double get chatId => isChat ? peerId - 2e9 : null;

  bool get isOutbox => _message['out'] == 1;
  bool get isInbox => !isOutbox;
  bool get isDM => chatId == peerId;
  bool get isUser => senderId > 0;
  bool get isGroup => !isUser;
  bool get isFromUser => isUser && isDM;
  bool get isFromGroup => isGroup && isDM;
  bool get isChat => !isUser;
  bool get hasText => text != null;
  bool get hasReplyMessage => replyMessage != null;
  bool get isImportant => _message['important'] == 1;
  bool get isHidden => _message['is_hidden'];
  bool get hasForwards => forwards.length != 0;
  bool get hasMessagePayload => _message['payload'] != null;
  bool hasAttachments() => attachments.length != 0;

  String get text => _message['text'];
  String get referralValue => _message['ref'];
  String get referralSource => _message['ref_source'];
  String get eventType => _message['action']['type'];
  String get eventText => _message['action']['text'];
  String get eventEmail => _message['action']['email'];

  Map<String, dynamic> get clientInfo => payload['client_info'];
  Map<String, dynamic> get replyMessage => _message['reply_message'];
  Map<String, dynamic> get messagePayload {
    Map<String, dynamic> payload = _message['payload'];

    if (payload == null) return null;

    return jsonDecode(jsonEncode(payload));
  }

  List<Map<String, dynamic>> get forwards => _message['fwd_messages'];
  List<Map<String, dynamic>> get attachments => _message['attachments'];

  /// Sends a message to the current dialog
  ///
  /// [Params]:
  ///
  /// `user_id` *(integer)* User ID (by default — current user).
  ///
  /// `random_id` *(integer)* Unique identifier to avoid resending the message.
  ///
  /// `peer_id` *(integer)* Destination ID. "For user: 'User ID', e.g. '12345'. For chat: '2000000000' + 'chat_id', e.g. '2000000001'. For community: '- community ID', e.g. '-12345'. "
  ///
  /// `domain` *(string)* User's short address (for example, 'illarionov').
  ///
  /// `chat_id` *(integer)* ID of conversation the message will relate to., max: 100000000
  ///
  /// `user_ids` *(array)* IDs of message recipients (if new conversation shall be started).
  ///
  /// `message` *(string)* (Required if 'attachments' is not set.) Text of the message.
  ///
  /// `lat` *(number)* Geographical latitude of a check-in, in degrees (from -90 to 90).
  ///
  /// `long` *(number)* Geographical longitude of a check-in, in degrees (from -180 to 180).
  ///
  /// `attachment` *(string)* (Required if 'message' is not set.) List of objects attached to the message, separated by commas, in the following format: "<owner_id>_<media_id>", '' — Type of media attachment: 'photo' — photo, 'video' — video, 'audio' — audio, 'doc' — document, 'wall' — wall post, '<owner_id>' — ID of the media attachment owner. '<media_id>' — media attachment ID. Example: "photo100172_166443618"
  ///
  /// `reply_to` *(integer)*
  ///
  /// `forward_messages` *(string)* ID of forwarded messages, separated with a comma. Listed messages of the sender will be shown in the message body at the recipient's. Example: "123,431,544"
  ///
  /// `sticker_id` *(integer)* Sticker id.
  ///
  /// `group_id` *(integer)* Group ID (for group messages with group access token)
  ///
  /// `keyboard` *(string)*
  ///
  /// `payload` *(string)*
  ///
  /// `dont_parse_links` *(boolean)*
  ///
  /// `disable_mentions` *(boolean)*
  Future<dynamic> send(String text, [Map<String, dynamic> params]) {
    return _vk.api.messages.send({
      'peer_id': peerId,
      'message': text,
      ...?params,
    });
  }

  /// Edits a message text
  /// 
  /// [Params]:
  ///
  /// `peer_id` *(integer)* Destination ID. "For user: 'User ID', e.g. '12345'. For chat: '2000000000' + 'chat_id', e.g. '2000000001'. For community: '- community ID', e.g. '-12345'. "
  ///
  /// `message` *(string)* (Required if 'attachments' is not set.) Text of the message.
  ///
  /// `message_id` *(integer)*
  ///
  /// `lat` *(number)* Geographical latitude of a check-in, in degrees (from -90 to 90).
  ///
  /// `long` *(number)* Geographical longitude of a check-in, in degrees (from -180 to 180).
  ///
  /// `attachment` *(string)* (Required if 'message' is not set.) List of objects attached to the message, separated by commas, in the following format: "<owner_id>_<media_id>", '' — Type of media attachment: 'photo' — photo, 'video' — video, 'audio' — audio, 'doc' — document, 'wall' — wall post, '<owner_id>' — ID of the media attachment owner. '<media_id>' — media attachment ID. Example: "photo100172_166443618"
  ///
  /// `keep_forward_messages` *(boolean)* '1' — to keep forwarded, messages.
  ///
  /// `keep_snippets` *(boolean)* '1' — to keep attached snippets.
  ///
  /// `group_id` *(integer)* Group ID (for group messages with user access token)
  ///
  /// `dont_parse_links` *(boolean)*
  Future<dynamic> editMessageText(String message, [Map<String, dynamic> params]) {
    return _vk.api.messages.edit({
      'peer_id': peerId,
      'message': message,
      ...?params,
    });
  }

  /// Replies to sent message
  /// 
  /// [Params]:
  /// 
  /// `message` *(string)* Text to reply.
  /// 
  /// `peer_id` *(integer)* Destination ID. "For user: 'User ID', e.g. '12345'. For chat: '2000000000' + 'chat_id', e.g. '2000000001'. For community: '- community ID', e.g. '-12345'. "
  ///
  /// `message` *(string)* (Required if 'attachments' is not set.) Text of the message.
  ///
  /// `message_id` *(integer)*
  ///
  /// `lat` *(number)* Geographical latitude of a check-in, in degrees (from -90 to 90).
  ///
  /// `long` *(number)* Geographical longitude of a check-in, in degrees (from -180 to 180).
  ///
  /// `attachment` *(string)* (Required if 'message' is not set.) List of objects attached to the message, separated by commas, in the following format: "<owner_id>_<media_id>", '' — Type of media attachment: 'photo' — photo, 'video' — video, 'audio' — audio, 'doc' — document, 'wall' — wall post, '<owner_id>' — ID of the media attachment owner. '<media_id>' — media attachment ID. Example: "photo100172_166443618"
  ///
  /// `keep_forward_messages` *(boolean)* '1' — to keep forwarded, messages.
  ///
  /// `keep_snippets` *(boolean)* '1' — to keep attached snippets.
  ///
  /// `group_id` *(integer)* Group ID (for group messages with user access token)
  ///
  /// `dont_parse_links` *(boolean)*
  Future<dynamic> reply(String message, [Map<String, dynamic> params]) {
    return send('', {
      'reply_to': id,
      'message': message,
      ...?params,
    });
  }

  /// Sends sticker by ID
  /// 
  /// `id` *(integer)* Sticker ID.
  Future<dynamic> sendSticker(int id) {
    return send('', { 'sticker_id': id.toString() });
  }

  // This is fucking impossible to me to do.
  // Error on line 1, column 18: Invalid media type: expected /[^()<>@,;:"\\/[\]?={} \t\x00-\x1F\x7F]+/.
  // Even tho I do `data.headers.set('content-type', 'application/json');`.
  // Fix me and add `sendPhotos` method if you can.

  // Future<dynamic> sendPhotos(
  //   List<Map<String, dynamic>> sources,
  //   [Map<String, dynamic> params]
  // ) async {
  //   Dio dio = Dio();

  //   var attachment = await Future.wait(
  //     sources.map(
  //       (source) async {
  //         var uploadServer = await _vk.api.photos.getMessagesUploadServer({
  //           'peer_id': params != null ? params['peer_id'] ?? peerId : peerId,
  //         });

  //         uploadServer = jsonDecode(jsonEncode(uploadServer));

  //         FormData formData = FormData.fromMap({
  //           'photo': source['url'],
  //         });

  //         var data = await dio.post(
  //           uploadServer['upload_url'],
  //           data: formData,
  //         );

  //         data.headers.set('content-type', 'application/json');

  //         var dataResponse = jsonDecode(data.data);

  //         print(dataResponse);

  //         var photo = await _vk.api.photos.saveMessagesPhoto({
  //           'photo': dataResponse['photo'],
  //           'server': dataResponse['server'],
  //           'hash': dataResponse['hash'],
  //         });

  //         print(photo);
  //       },
  //     ),
  //   );
  // }

  /// Changes the status of typing in the dialog
  /// 
  /// `type` *(string)* Activity type. `typing` or `audiomessage`
  Future<dynamic> setActivity([String type = 'typing']) async {
    return _vk.api.messages.setActivity({
      'peer_id': peerId,
      'type': type,
    });
  }

  /// Marks messages as important or removes a mark
  /// 
  /// `ids` *(array)* List of message IDs.
  Future<dynamic> markAsImportant([List<int> ids = const []]) async {
    if (ids.isEmpty) ids = [id];

    var messageIds = await _vk.api.messages.markAsImportant({
      'message_ids': ids,
    });

    if (messageIds.contains(id)) {
      _message['important'] = true;
    }

    return messageIds;
  }

  /// Deletes the message
  /// 
  /// `ids` *(array)* List of message IDs.
  Future<dynamic> deleteMessage([List<int> ids = const []]) {
    if (ids.isEmpty) ids = [id];

    return _vk.api.messages.delete({
      'message_ids': ids,
    });
  }

  /// Restores the message
  Future<dynamic> restoreMessage() {
    return _vk.api.messages.restore({
      'message_ids': id,
    });
  }

  void _assertIsChat() {
    throw AssertionError({
      'message': 'This method is only available in chat',
      'code': 'IS_NOT_CHAT',
    });
  }

  /// Renames the chat
  /// 
  /// [title]: *(string)* New chat title.
  Future<dynamic> renameChat(String title) {
    _assertIsChat();

    return _vk.api.messages.editChat({
      'chat_id': chatId,
      'title': title,
    });
  }

  /// Removes the chat photo
  Future<dynamic> deleteChatPhoto() {
    _assertIsChat();

    return _vk.api.messages.deleteChatPhoto({
      'chat_id': chatId,
    });
  }

  /// Invites a new user
  /// 
  /// `id` *(integer)* User ID.
  Future<dynamic> inviteUser([int id]) {
    _assertIsChat();

    id ??= eventMemberId;

    return _vk.api.messages.addChatUser({
      'chat_id': chatId,
      'user_id': id,
    });
  }

  /// Excludes user from chat
  /// 
  /// `id` *(integer)* User or group ID.
  Future<dynamic> kickUser([int id]) {
    _assertIsChat();

    id ??= eventMemberId;

    return _vk.api.messages.removeChatUser({
      'chat_id': chatId,
      'member_id': id,
    });
  }

  /// Pins a message
  Future<dynamic> pinMessage() {
    _assertIsChat();

    return _vk.api.messages.pin({
      'peer_id': peerId,
      'message_id': id,
    });
  }

  /// Unpins a message
  Future<dynamic> unpinMessage() {
    _assertIsChat();

    return _vk.api.messages.unpin({
      'peer_id': peerId,
      'message_id': id,
    });
  }

  operator [](String key) {
    return _message[key];
  }
}

var contexts = [
  MessageContext,
];
