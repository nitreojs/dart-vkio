import './api.dart';

/// Messages class
class Messages {
  /// API class
  API _api;

  /// Messages
  Messages(API api) {
    _api = api;
  }

  String toString() {
    return 'Messages';
  }

  /// Adds a new user to a chat.
  ///
  /// Params:
  ///
  /// `chat_id` *(integer)* Chat ID., max: 100000000
  ///
  /// `user_id` *(integer)* ID of the user to be added to the chat.
  Future<Map> addChatUser([Map<String, dynamic> params]) async {
    return _api.request('messages.addChatUser', {
      ...?params,
    });
  }

  /// Allows sending messages from community to the current user.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Group ID.
  ///
  /// `key` *(string)*
  Future<Map> allowMessagesFromGroup([Map<String, dynamic> params]) async {
    return _api.request('messages.allowMessagesFromGroup', {
      ...?params,
    });
  }

  /// Creates a chat with several participants.
  ///
  /// Params:
  ///
  /// `user_ids` *(array)* IDs of the users to be added to the chat.
  ///
  /// `title` *(string)* Chat title.
  Future<Map> createChat([Map<String, dynamic> params]) async {
    return _api.request('messages.createChat', {
      ...?params,
    });
  }

  /// Deletes one or more messages.
  ///
  /// Params:
  ///
  /// `message_ids` *(array)* Message IDs.
  ///
  /// `spam` *(boolean)* '1' — to mark message as spam.
  ///
  /// `group_id` *(integer)* Group ID (for group messages with user access token)
  ///
  /// `delete_for_all` *(boolean)* '1' — delete message for for all.
  Future<Map> delete([Map<String, dynamic> params]) async {
    return _api.request('messages.delete', {
      ...?params,
    });
  }

  /// Deletes a chat's cover picture.
  ///
  /// Params:
  ///
  /// `chat_id` *(integer)* Chat ID., max: 100000000
  ///
  /// `group_id` *(integer)*
  Future<Map> deleteChatPhoto([Map<String, dynamic> params]) async {
    return _api.request('messages.deleteChatPhoto', {
      ...?params,
    });
  }

  /// Deletes all private messages in a conversation.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* User ID. To clear a chat history use 'chat_id'
  ///
  /// `peer_id` *(integer)* Destination ID. "For user: 'User ID', e.g. '12345'. For chat: '2000000000' + 'chat_id', e.g. '2000000001'. For community: '- community ID', e.g. '-12345'. "
  /// 
  /// `group_id` *(integer)* Group ID (for group messages with user access token)
  Future<Map> deleteConversation([Map<String, dynamic> params]) async {
    return _api.request('messages.deleteConversation', {
      ...?params,
    });
  }

  /// Denies sending message from community to the current user.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Group ID.
  Future<Map> denyMessagesFromGroup([Map<String, dynamic> params]) async {
    return _api.request('messages.denyMessagesFromGroup', {
      ...?params,
    });
  }

  /// Edits the message.
  ///
  /// Params:
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
  Future<Map> edit([Map<String, dynamic> params]) async {
    return _api.request('messages.edit', {
      ...?params,
    });
  }

  /// Edits the title of a chat.
  ///
  /// Params:
  ///
  /// `chat_id` *(integer)* Chat ID., max: 100000000
  ///
  /// `title` *(string)* New title of the chat.
  Future<Map> editChat([Map<String, dynamic> params]) async {
    return _api.request('messages.editChat', {
      ...?params,
    });
  }

  /// Returns messages by their IDs within the conversation.
  ///
  /// Params:
  ///
  /// `peer_id` *(integer)* Destination ID. "For user: 'User ID', e.g. '12345'. For chat: '2000000000' + 'chat_id', e.g. '2000000001'. For community: '- community ID', e.g. '-12345'. "
  ///
  /// `conversation_message_ids` *(array)* Conversation message IDs.
  ///
  /// `extended` *(boolean)* Information whether the response should be extended
  ///
  /// `fields` *(array)* Profile fields to return.
  ///
  /// `group_id` *(integer)* Group ID (for group messages with group access token)
  Future<Map> getByConversationMessageId([Map<String, dynamic> params]) async {
    return _api.request('messages.getByConversationMessageId', {
      ...?params,
    });
  }

  /// Returns messages by their IDs.
  ///
  /// Params:
  ///
  /// `message_ids` *(array)* Message IDs.
  ///
  /// `preview_length` *(integer)* Number of characters after which to truncate a previewed message. To preview the full message, specify '0'. "NOTE: Messages are not truncated by default. Messages are truncated by words."
  ///
  /// `extended` *(boolean)* Information whether the response should be extended
  ///
  /// `fields` *(array)* Profile fields to return.
  ///
  /// `group_id` *(integer)* Group ID (for group messages with group access token)
  Future<Map> getById([Map<String, dynamic> params]) async {
    return _api.request('messages.getById', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `peer_id` *(integer)*
  ///
  /// `link` *(string)* Invitation link.
  ///
  /// `fields` *(array)* Profile fields to return.
  Future<Map> getChatPreview([Map<String, dynamic> params]) async {
    return _api.request('messages.getChatPreview', {
      ...?params,
    });
  }

  /// Returns a list of IDs of users participating in a chat.
  ///
  /// Params:
  ///
  /// `peer_id` *(integer)* Peer ID.
  ///
  /// `fields` *(array)* Profile fields to return.
  ///
  /// `group_id` *(integer)* Group ID (for group messages with group access token)
  Future<Map> getConversationMembers([Map<String, dynamic> params]) async {
    return _api.request('messages.getConversationMembers', {
      ...?params,
    });
  }

  /// Returns a list of the current user's conversations.
  ///
  /// Params:
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of conversations.
  ///
  /// `count` *(integer)* Number of conversations to return., default: 20, max: 200
  ///
  /// `filter` *(string)* Filter to apply: 'all' — all conversations, 'unread' — conversations with unread messages, 'important' — conversations, marked as important (only for community messages), 'unanswered' — conversations, marked as unanswered (only for community messages), default: all
  ///
  /// `extended` *(boolean)* '1' — return extra information about users and communities
  ///
  /// `start_message_id` *(integer)* ID of the message from what to return dialogs.
  ///
  /// `fields` *(array)* Profile and communities fields to return.
  ///
  /// `group_id` *(integer)* Group ID (for group messages with group access token)
  Future<Map> getConversations([Map<String, dynamic> params]) async {
    return _api.request('messages.getConversations', {
      ...?params,
    });
  }

  /// Returns conversations by their IDs
  ///
  /// Params:
  ///
  /// `peer_ids` *(array)* Destination IDs. "For user: 'User ID', e.g. '12345'. For chat: '2000000000' + 'chat_id', e.g. '2000000001'. For community: '- community ID', e.g. '-12345'. "
  ///
  /// `extended` *(boolean)* Return extended properties
  ///
  /// `fields` *(array)* Profile and communities fields to return.
  ///
  /// `group_id` *(integer)* Group ID (for group messages with group access token)
  Future<Map> getConversationsById([Map<String, dynamic> params]) async {
    return _api.request('messages.getConversationsById', {
      ...?params,
    });
  }

  /// Returns message history for the specified user or group chat.
  ///
  /// Params:
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of messages.
  ///
  /// `count` *(integer)* Number of messages to return., default: 20, max: 200
  ///
  /// `user_id` *(integer)* ID of the user whose message history you want to return.
  ///
  /// `peer_id` *(integer)*
  ///
  /// `start_message_id` *(integer)* Starting message ID from which to return history.
  ///
  /// `rev` *(integer)* Sort order: '1' — return messages in chronological order. '0' — return messages in reverse chronological order.
  ///
  /// `extended` *(boolean)* Information whether the response should be extended
  ///
  /// `fields` *(array)* Profile fields to return.
  ///
  /// `group_id` *(integer)* Group ID (for group messages with group access token)
  Future<Map> getHistory([Map<String, dynamic> params]) async {
    return _api.request('messages.getHistory', {
      ...?params,
    });
  }

  /// Returns media files from the dialog or group chat.
  ///
  /// Params:
  ///
  /// `peer_id` *(integer)* Peer ID. ", For group chat: '2000000000 + chat ID' , , For community: '-community ID'"
  ///
  /// `media_type` *(string)* Type of media files to return: *'photo',, *'video',, *'audio',, *'doc',, *'link'.,*'market'.,*'wall'.,*'share', default: photo
  ///
  /// `start_from` *(string)* Message ID to start return results from.
  ///
  /// `count` *(integer)* Number of objects to return., default: 30, max: 200
  ///
  /// `photo_sizes` *(boolean)* '1' — to return photo sizes in a
  ///
  /// `fields` *(array)* Additional profile [fields](https://vk.com/dev/fields) to return.
  ///
  /// `group_id` *(integer)* Group ID (for group messages with group access token)
  ///
  /// `preserve_order` *(boolean)*
  ///
  /// `max_forwards_level` *(integer)*, default: 45, max: 45
  Future<Map> getHistoryAttachments([Map<String, dynamic> params]) async {
    return _api.request('messages.getHistoryAttachments', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `peer_id` *(integer)* Destination ID.
  ///
  /// `reset` *(boolean)* 1 — to generate new link (revoke previous), 0 — to return previous link.
  ///
  /// `group_id` *(integer)* Group ID
  Future<Map> getInviteLink([Map<String, dynamic> params]) async {
    return _api.request('messages.getInviteLink', {
      ...?params,
    });
  }

  /// Returns a user's current status and date of last activity.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* User ID.
  Future<Map> getLastActivity([Map<String, dynamic> params]) async {
    return _api.request('messages.getLastActivity', {
      ...?params,
    });
  }

  /// Returns updates in user's private messages.
  ///
  /// Params:
  ///
  /// `ts` *(integer)* Last value of the 'ts' parameter returned from the Long Poll server or by using [messages.getLongPollHistory](https://vk.com/dev/messages.getLongPollHistory) method.
  ///
  /// `pts` *(integer)* Lsat value of 'pts' parameter returned from the Long Poll server or by using [messages.getLongPollHistory](https://vk.com/dev/messages.getLongPollHistory) method.
  ///
  /// `preview_length` *(integer)* Number of characters after which to truncate a previewed message. To preview the full message, specify '0'. "NOTE: Messages are not truncated by default. Messages are truncated by words."
  ///
  /// `onlines` *(boolean)* '1' — to return history with online users only.
  ///
  /// `fields` *(array)* Additional profile [fields](https://vk.com/dev/fields) to return., default: photo,photo_medium_rec,sex,online,screen_name
  ///
  /// `events_limit` *(integer)* Maximum number of events to return., default: 1000, min: 1000
  ///
  /// `msgs_limit` *(integer)* Maximum number of messages to return., default: 200, min: 200
  ///
  /// `max_msg_id` *(integer)* Maximum ID of the message among existing ones in the local copy. Both messages received with API methods (for example, , ), and data received from a Long Poll server (events with code 4) are taken into account.
  ///
  /// `group_id` *(integer)* Group ID (for group messages with user access token)
  ///
  /// `lp_version` *(integer)*
  ///
  /// `last_n` *(integer)*, max: 2000
  ///
  /// `credentials` *(boolean)*
  Future<Map> getLongPollHistory([Map<String, dynamic> params]) async {
    return _api.request('messages.getLongPollHistory', {
      ...?params,
    });
  }

  /// Returns data required for connection to a Long Poll server.
  ///
  /// Params:
  ///
  /// `need_pts` *(boolean)* '1' — to return the 'pts' field, needed for the [messages.getLongPollHistory](https://vk.com/dev/messages.getLongPollHistory) method.
  ///
  /// `group_id` *(integer)* Group ID (for group messages with user access token)
  ///
  /// `lp_version` *(integer)* Long poll version
  Future<Map> getLongPollServer([Map<String, dynamic> params]) async {
    return _api.request('messages.getLongPollServer', {
      ...?params,
    });
  }

  /// Returns information whether sending messages from the community to current user is allowed.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Group ID.
  ///
  /// `user_id` *(integer)* User ID.
  Future<Map> isMessagesFromGroupAllowed([Map<String, dynamic> params]) async {
    return _api.request('messages.isMessagesFromGroupAllowed', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `link` *(string)* Invitation link.
  Future<Map> joinChatByInviteLink([Map<String, dynamic> params]) async {
    return _api.request('messages.joinChatByInviteLink', {
      ...?params,
    });
  }

  /// Marks and unmarks conversations as unanswered.
  ///
  /// Params:
  ///
  /// `peer_id` *(integer)* ID of conversation to mark as important.
  ///
  /// `answered` *(boolean)* '1' — to mark as answered, '0' — to remove the mark, default: 1
  ///
  /// `group_id` *(integer)* Group ID (for group messages with group access token)
  Future<Map> markAsAnsweredConversation([Map<String, dynamic> params]) async {
    return _api.request('messages.markAsAnsweredConversation', {
      ...?params,
    });
  }

  /// Marks and unmarks messages as important (starred).
  ///
  /// Params:
  ///
  /// `message_ids` *(array)* IDs of messages to mark as important., default:
  ///
  /// `important` *(integer)* '1' — to add a star (mark as important), '0' — to remove the star
  Future<Map> markAsImportant([Map<String, dynamic> params]) async {
    return _api.request('messages.markAsImportant', {
      ...?params,
    });
  }

  /// Marks and unmarks conversations as important.
  ///
  /// Params:
  ///
  /// `peer_id` *(integer)* ID of conversation to mark as important.
  ///
  /// `important` *(boolean)* '1' — to add a star (mark as important), '0' — to remove the star, default: 1
  ///
  /// `group_id` *(integer)* Group ID (for group messages with group access token)
  Future<Map> markAsImportantConversation([Map<String, dynamic> params]) async {
    return _api.request('messages.markAsImportantConversation', {
      ...?params,
    });
  }

  /// Marks messages as read.
  ///
  /// Params:
  ///
  /// `peer_id` *(integer)* Destination ID. "For user: 'User ID', e.g. '12345'. For chat: '2000000000' + 'chat_id', e.g. '2000000001'. For community: '- community ID', e.g. '-12345'. "
  ///
  /// `start_message_id` *(integer)* Message ID to start from.
  ///
  /// `group_id` *(integer)* Group ID (for group messages with user access token)
  Future<Map> markAsRead([Map<String, dynamic> params]) async {
    return _api.request('messages.markAsRead', {
      ...?params,
    });
  }

  /// Pin a message.
  ///
  /// Params:
  ///
  /// `peer_id` *(integer)* Destination ID. "For user: 'User ID', e.g. '12345'. For chat: '2000000000' + 'Chat ID', e.g. '2000000001'. For community: '- Community ID', e.g. '-12345'. "
  ///
  /// `message_id` *(integer)*
  Future<Map> pin([Map<String, dynamic> params]) async {
    return _api.request('messages.pin', {
      ...?params,
    });
  }

  /// Allows the current user to leave a chat or, if the current user started the chat, allows the user to remove another user from the chat.
  ///
  /// Params:
  ///
  /// `chat_id` *(integer)* Chat ID., max: 100000000
  ///
  /// `user_id` *(integer)* ID of the user to be removed from the chat.
  ///
  /// `member_id` *(integer)*
  Future<Map> removeChatUser([Map<String, dynamic> params]) async {
    return _api.request('messages.removeChatUser', {
      ...?params,
    });
  }

  /// Restores a deleted message.
  ///
  /// Params:
  ///
  /// `message_id` *(integer)* ID of a previously-deleted message to restore.
  ///
  /// `group_id` *(integer)* Group ID (for group messages with user access token)
  Future<Map> restore([Map<String, dynamic> params]) async {
    return _api.request('messages.restore', {
      ...?params,
    });
  }

  /// Returns a list of the current user's private messages that match search criteria.
  ///
  /// Params:
  ///
  /// `q` *(string)* Search query string.
  ///
  /// `peer_id` *(integer)* Destination ID. "For user: 'User ID', e.g. '12345'. For chat: '2000000000' + 'chat_id', e.g. '2000000001'. For community: '- community ID', e.g. '-12345'. "
  ///
  /// `date` *(integer)* Date to search message before in Unixtime.
  ///
  /// `preview_length` *(integer)* Number of characters after which to truncate a previewed message. To preview the full message, specify '0'. "NOTE: Messages are not truncated by default. Messages are truncated by words."
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of messages.
  ///
  /// `count` *(integer)* Number of messages to return., default: 20, max: 100
  ///
  /// `extended` *(boolean)*
  ///
  /// `fields` *(array)*
  ///
  /// `group_id` *(integer)* Group ID (for group messages with group access token)
  Future<Map> search([Map<String, dynamic> params]) async {
    return _api.request('messages.search', {
      ...?params,
    });
  }

  /// Returns a list of the current user's conversations that match search criteria.
  ///
  /// Params:
  ///
  /// `q` *(string)* Search query string.
  ///
  /// `count` *(integer)* Maximum number of results., default: 20
  ///
  /// `extended` *(boolean)* '1' — return extra information about users and communities
  ///
  /// `fields` *(array)* Profile fields to return.
  ///
  /// `group_id` *(integer)* Group ID (for group messages with user access token)
  Future<Map> searchConversations([Map<String, dynamic> params]) async {
    return _api.request('messages.searchConversations', {
      ...?params,
    });
  }

  /// Sends a message.
  ///
  /// Params:
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
  Future<Map> send([Map<String, dynamic> params]) async {
    return _api.request('messages.send', {
      ...?params,
    });
  }

  /// Changes the status of a user as typing in a conversation.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* User ID.
  ///
  /// `type` *(string)* 'typing' — user has started to type.
  ///
  /// `peer_id` *(integer)* Destination ID. "For user: 'User ID', e.g. '12345'. For chat: '2000000000' + 'chat_id', e.g. '2000000001'. For community: '- community ID', e.g. '-12345'. "
  ///
  /// `group_id` *(integer)* Group ID (for group messages with group access token)
  Future<Map> setActivity([Map<String, dynamic> params]) async {
    return _api.request('messages.setActivity', {
      ...?params,
    });
  }

  /// Sets a previously-uploaded picture as the cover picture of a chat.
  ///
  /// Params:
  ///
  /// `file` *(string)* Upload URL from the 'response' field returned by the [photos.getChatUploadServer](https://vk.com/dev/photos.getChatUploadServer) method upon successfully uploading an image.
  Future<Map> setChatPhoto([Map<String, dynamic> params]) async {
    return _api.request('messages.setChatPhoto', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `peer_id` *(integer)*
  ///
  /// `group_id` *(integer)*
  Future<Map> unpin([Map<String, dynamic> params]) async {
    return _api.request('messages.unpin', {
      ...?params,
    });
  }
}
