import './api.dart';

/// Board class
class Board {
  /// API class
  API _api;

  /// Board
  Board(API api) {
    _api = api;
  }

  @override
  String toString() {
    return 'Board';
  }

  /// Creates a new topic on a community's discussion board.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* ID of the community that owns the discussion board.
  ///
  /// `title` *(string)* Topic title.
  ///
  /// `text` *(string)* Text of the topic.
  ///
  /// `from_group` *(boolean)* For a community: '1' — to post the topic as by the community, '0' — to post the topic as by the user (default)
  ///
  /// `attachments` *(array)* List of media objects attached to the topic, in the following format: "<owner_id>_<media_id>,<owner_id>_<media_id>", '' — Type of media object: 'photo' — photo, 'video' — video, 'audio' — audio, 'doc' — document, '<owner_id>' — ID of the media owner. '<media_id>' — Media ID. Example: "photo100172_166443618,photo66748_265827614", , "NOTE: If you try to attach more than one reference, an error will be thrown.",
  Future<Map> addTopic([Map<String, dynamic> params]) async {
    return _api.request('board.addTopic', {
      ...?params,
    });
  }

  /// Closes a topic on a community's discussion board so that comments cannot be posted.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* ID of the community that owns the discussion board.
  ///
  /// `topic_id` *(integer)* Topic ID.
  Future<Map> closeTopic([Map<String, dynamic> params]) async {
    return _api.request('board.closeTopic', {
      ...?params,
    });
  }

  /// Adds a comment on a topic on a community's discussion board.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* ID of the community that owns the discussion board.
  ///
  /// `topic_id` *(integer)* ID of the topic to be commented on.
  ///
  /// `message` *(string)* (Required if 'attachments' is not set.) Text of the comment.
  ///
  /// `attachments` *(array)* (Required if 'text' is not set.) List of media objects attached to the comment, in the following format: "<owner_id>_<media_id>,<owner_id>_<media_id>", '' — Type of media object: 'photo' — photo, 'video' — video, 'audio' — audio, 'doc' — document, '<owner_id>' — ID of the media owner. '<media_id>' — Media ID.
  ///
  /// `from_group` *(boolean)* '1' — to post the comment as by the community, '0' — to post the comment as by the user (default)
  ///
  /// `sticker_id` *(integer)* Sticker ID.
  ///
  /// `guid` *(string)* Unique identifier to avoid repeated comments.
  Future<Map> createComment([Map<String, dynamic> params]) async {
    return _api.request('board.createComment', {
      ...?params,
    });
  }

  /// Deletes a comment on a topic on a community's discussion board.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* ID of the community that owns the discussion board.
  ///
  /// `topic_id` *(integer)* Topic ID.
  ///
  /// `comment_id` *(integer)* Comment ID.
  Future<Map> deleteComment([Map<String, dynamic> params]) async {
    return _api.request('board.deleteComment', {
      ...?params,
    });
  }

  /// Deletes a topic from a community's discussion board.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* ID of the community that owns the discussion board.
  ///
  /// `topic_id` *(integer)* Topic ID.
  Future<Map> deleteTopic([Map<String, dynamic> params]) async {
    return _api.request('board.deleteTopic', {
      ...?params,
    });
  }

  /// Edits a comment on a topic on a community's discussion board.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* ID of the community that owns the discussion board.
  ///
  /// `topic_id` *(integer)* Topic ID.
  ///
  /// `comment_id` *(integer)* ID of the comment on the topic.
  ///
  /// `message` *(string)* (Required if 'attachments' is not set). New comment text.
  ///
  /// `attachments` *(array)* (Required if 'message' is not set.) List of media objects attached to the comment, in the following format: "<owner_id>_<media_id>,<owner_id>_<media_id>", '' — Type of media object: 'photo' — photo, 'video' — video, 'audio' — audio, 'doc' — document, '<owner_id>' — ID of the media owner. '<media_id>' — Media ID. Example: "photo100172_166443618,photo66748_265827614"
  Future<Map> editComment([Map<String, dynamic> params]) async {
    return _api.request('board.editComment', {
      ...?params,
    });
  }

  /// Edits the title of a topic on a community's discussion board.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* ID of the community that owns the discussion board.
  ///
  /// `topic_id` *(integer)* Topic ID.
  ///
  /// `title` *(string)* New title of the topic.
  Future<Map> editTopic([Map<String, dynamic> params]) async {
    return _api.request('board.editTopic', {
      ...?params,
    });
  }

  /// Pins a topic (fixes its place) to the top of a community's discussion board.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* ID of the community that owns the discussion board.
  ///
  /// `topic_id` *(integer)* Topic ID.
  Future<Map> fixTopic([Map<String, dynamic> params]) async {
    return _api.request('board.fixTopic', {
      ...?params,
    });
  }

  /// Returns a list of comments on a topic on a community's discussion board.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* ID of the community that owns the discussion board.
  ///
  /// `topic_id` *(integer)* Topic ID.
  ///
  /// `need_likes` *(boolean)* '1' — to return the 'likes' field, '0' — not to return the 'likes' field (default)
  ///
  /// `start_comment_id` *(integer)*
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of comments.
  ///
  /// `count` *(integer)* Number of comments to return., default: 20, max: 100
  ///
  /// `extended` *(boolean)* '1' — to return information about users who posted comments, '0' — to return no additional fields (default)
  ///
  /// `sort` *(string)* Sort order: 'asc' — by creation date in chronological order, 'desc' — by creation date in reverse chronological order,
  Future<Map> getComments([Map<String, dynamic> params]) async {
    return _api.request('board.getComments', {
      ...?params,
    });
  }

  /// Returns a list of topics on a community's discussion board.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* ID of the community that owns the discussion board.
  ///
  /// `topic_ids` *(array)* IDs of topics to be returned (100 maximum). By default, all topics are returned. If this parameter is set, the 'order', 'offset', and 'count' parameters are ignored.
  ///
  /// `order` *(integer)* Sort order: '1' — by date updated in reverse chronological order. '2' — by date created in reverse chronological order. '-1' — by date updated in chronological order. '-2' — by date created in chronological order. If no sort order is specified, topics are returned in the order specified by the group administrator. Pinned topics are returned first, regardless of the sorting.
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of topics.
  ///
  /// `count` *(integer)* Number of topics to return., default: 40, max: 100
  ///
  /// `extended` *(boolean)* '1' — to return information about users who created topics or who posted there last, '0' — to return no additional fields (default)
  ///
  /// `preview` *(integer)* '1' — to return the first comment in each topic,, '2' — to return the last comment in each topic,, '0' — to return no comments. By default: '0'.
  ///
  /// `preview_length` *(integer)* Number of characters after which to truncate the previewed comment. To preview the full comment, specify '0'., default: 90
  Future<Map> getTopics([Map<String, dynamic> params]) async {
    return _api.request('board.getTopics', {
      ...?params,
    });
  }

  /// Re-opens a previously closed topic on a community's discussion board.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* ID of the community that owns the discussion board.
  ///
  /// `topic_id` *(integer)* Topic ID.
  Future<Map> openTopic([Map<String, dynamic> params]) async {
    return _api.request('board.openTopic', {
      ...?params,
    });
  }

  /// Restores a comment deleted from a topic on a community's discussion board.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* ID of the community that owns the discussion board.
  ///
  /// `topic_id` *(integer)* Topic ID.
  ///
  /// `comment_id` *(integer)* Comment ID.
  Future<Map> restoreComment([Map<String, dynamic> params]) async {
    return _api.request('board.restoreComment', {
      ...?params,
    });
  }

  /// Unpins a pinned topic from the top of a community's discussion board.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* ID of the community that owns the discussion board.
  ///
  /// `topic_id` *(integer)* Topic ID.
  Future<Map> unfixTopic([Map<String, dynamic> params]) async {
    return _api.request('board.unfixTopic', {
      ...?params,
    });
  }
}
