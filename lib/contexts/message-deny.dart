import 'package:vkio/main.dart';

import 'context.dart';

class MessageDenyContext extends Context {
  Map<String, dynamic> _message;
  VK _vk;

  MessageDenyContext(VK vk, Map<String, dynamic> update)
      : super(update['type']) {
    _message = update['object'];
    _vk = vk;
  }

  int get userId => _message['user_id'];

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
      'user_id': userId,
      'message': text,
      ...?params,
    });
  }

  /// Sends sticker by ID
  ///
  /// `id` *(integer)* Sticker ID.
  Future<dynamic> sendSticker(int id) {
    return send('', {'sticker_id': id.toString()});
  }

  /// Changes the status of typing in the dialog
  ///
  /// `type` *(string)* Activity type. `typing` or `audiomessage`
  Future<dynamic> setActivity([String type = 'typing']) async {
    return _vk.api.messages.setActivity({
      'user_id': userId,
      'type': type,
    });
  }
}
