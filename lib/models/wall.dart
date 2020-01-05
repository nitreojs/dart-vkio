import 'api.dart';

/// Wall class
class Wall {
  /// API class
  API _api;

  /// Wall
  Wall(API api) {
    _api = api;
  }

  @override
  String toString() {
    return 'Wall';
  }

  /// Params:
  ///
  /// `owner_id` *(integer)*
  ///
  /// `post_id` *(integer)*
  Future<Map> closeComments([Map<String, dynamic> params]) async {
    return _api.request('wall.closeComments', {
      ...?params,
    });
  }

  /// Adds a comment to a post on a user wall or community wall.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* User ID or community ID. Use a negative value to designate a community ID.
  ///
  /// `post_id` *(integer)* Post ID.
  ///
  /// `from_group` *(integer)* Group ID.
  ///
  /// `message` *(string)* (Required if 'attachments' is not set.) Text of the comment.
  ///
  /// `reply_to_comment` *(integer)* ID of comment to reply.
  ///
  /// `attachments` *(array)* (Required if 'message' is not set.) List of media objects attached to the comment, in the following format: "<owner_id>_<media_id>,<owner_id>_<media_id>", '' — Type of media ojbect: 'photo' — photo, 'video' — video, 'audio' — audio, 'doc' — document, '<owner_id>' — ID of the media owner. '<media_id>' — Media ID. For example: "photo100172_166443618,photo66748_265827614"
  ///
  /// `sticker_id` *(integer)* Sticker ID.
  ///
  /// `guid` *(string)* Unique identifier to avoid repeated comments.
  Future<Map> createComment([Map<String, dynamic> params]) async {
    return _api.request('wall.createComment', {
      ...?params,
    });
  }

  /// Deletes a post from a user wall or community wall.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* User ID or community ID. Use a negative value to designate a community ID.
  ///
  /// `post_id` *(integer)* ID of the post to be deleted.
  Future<Map> delete([Map<String, dynamic> params]) async {
    return _api.request('wall.delete', {
      ...?params,
    });
  }

  /// Deletes a comment on a post on a user wall or community wall.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* User ID or community ID. Use a negative value to designate a community ID.
  ///
  /// `comment_id` *(integer)* Comment ID.
  Future<Map> deleteComment([Map<String, dynamic> params]) async {
    return _api.request('wall.deleteComment', {
      ...?params,
    });
  }

  /// Edits a post on a user wall or community wall.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* User ID or community ID. Use a negative value to designate a community ID.
  ///
  /// `post_id` *(integer)*
  ///
  /// `friends_only` *(boolean)*
  ///
  /// `message` *(string)* (Required if 'attachments' is not set.) Text of the post.
  ///
  /// `attachments` *(array)* (Required if 'message' is not set.) List of objects attached to the post, in the following format: "<owner_id>_<media_id>,<owner_id>_<media_id>", '' — Type of media attachment: 'photo' — photo, 'video' — video, 'audio' — audio, 'doc' — document, '<owner_id>' — ID of the media application owner. '<media_id>' — Media application ID. Example: "photo100172_166443618,photo66748_265827614", May contain a link to an external page to include in the post. Example: "photo66748_265827614,http://habrahabr.ru", "NOTE: If more than one link is being attached, an error is thrown."
  ///
  /// `services` *(string)*
  ///
  /// `signed` *(boolean)*
  ///
  /// `publish_date` *(integer)*
  ///
  /// `lat` *(number)*
  ///
  /// `long` *(number)*
  ///
  /// `place_id` *(integer)*
  ///
  /// `mark_as_ads` *(boolean)*
  ///
  /// `close_comments` *(boolean)*
  ///
  /// `poster_bkg_id` *(integer)*
  ///
  /// `poster_bkg_owner_id` *(integer)*
  ///
  /// `poster_bkg_access_hash` *(string)*
  Future<Map> edit([Map<String, dynamic> params]) async {
    return _api.request('wall.edit', {
      ...?params,
    });
  }

  /// Allows to edit hidden post.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* User ID or community ID. Use a negative value to designate a community ID.
  ///
  /// `post_id` *(integer)* Post ID. Used for publishing of scheduled and suggested posts.
  ///
  /// `message` *(string)* (Required if 'attachments' is not set.) Text of the post.
  ///
  /// `attachments` *(array)* (Required if 'message' is not set.) List of objects attached to the post, in the following format: "<owner_id>_<media_id>,<owner_id>_<media_id>", '' — Type of media attachment: 'photo' — photo, 'video' — video, 'audio' — audio, 'doc' — document, 'page' — wiki-page, 'note' — note, 'poll' — poll, 'album' — photo album, '<owner_id>' — ID of the media application owner. '<media_id>' — Media application ID. Example: "photo100172_166443618,photo66748_265827614", May contain a link to an external page to include in the post. Example: "photo66748_265827614,http://habrahabr.ru", "NOTE: If more than one link is being attached, an error will be thrown."
  ///
  /// `signed` *(boolean)* Only for posts in communities with 'from_group' set to '1': '1' — post will be signed with the name of the posting user, '0' — post will not be signed (default)
  ///
  /// `lat` *(number)* Geographical latitude of a check-in, in degrees (from -90 to 90).
  ///
  /// `long` *(number)* Geographical longitude of a check-in, in degrees (from -180 to 180).
  ///
  /// `place_id` *(integer)* ID of the location where the user was tagged.
  ///
  /// `link_button` *(string)* Link button ID
  ///
  /// `link_title` *(string)* Link title
  ///
  /// `link_image` *(string)* Link image url
  ///
  /// `link_video` *(string)* Link video ID in format "<owner_id>_<media_id>"
  Future<Map> editAdsStealth([Map<String, dynamic> params]) async {
    return _api.request('wall.editAdsStealth', {
      ...?params,
    });
  }

  /// Edits a comment on a user wall or community wall.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* User ID or community ID. Use a negative value to designate a community ID.
  ///
  /// `comment_id` *(integer)* Comment ID.
  ///
  /// `message` *(string)* New comment text.
  ///
  /// `attachments` *(array)* List of objects attached to the comment, in the following format: , "<owner_id>_<media_id>,<owner_id>_<media_id>", '' — Type of media attachment: 'photo' — photo, 'video' — video, 'audio' — audio, 'doc' — document, '<owner_id>' — ID of the media attachment owner. '<media_id>' — Media attachment ID. For example: "photo100172_166443618,photo66748_265827614"
  Future<Map> editComment([Map<String, dynamic> params]) async {
    return _api.request('wall.editComment', {
      ...?params,
    });
  }

  /// Returns a list of posts on a user wall or community wall.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the wall. By default, current user ID. Use a negative value to designate a community ID.
  ///
  /// `domain` *(string)* User or community short address.
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of posts.
  ///
  /// `count` *(integer)* Number of posts to return (maximum 100).
  ///
  /// `filter` *(string)* Filter to apply: 'owner' — posts by the wall owner, 'others' — posts by someone else, 'all' — posts by the wall owner and others (default), 'postponed' — timed posts (only available for calls with an 'access_token'), 'suggests' — suggested posts on a community wall
  ///
  /// `extended` *(boolean)* '1' — to return 'wall', 'profiles', and 'groups' fields, '0' — to return no additional fields (default)
  ///
  /// `fields` *(array)*
  Future<Map> get([Map<String, dynamic> params]) async {
    return _api.request('wall.get', {
      ...?params,
    });
  }

  /// Returns a list of posts from user or community walls by their IDs.
  ///
  /// Params:
  ///
  /// `posts` *(array)* User or community IDs and post IDs, separated by underscores. Use a negative value to designate a community ID. Example: "93388_21539,93388_20904,2943_4276,-1_1"
  ///
  /// `extended` *(boolean)* '1' — to return user and community objects needed to display posts, '0' — no additional fields are returned (default)
  ///
  /// `copy_history_depth` *(integer)* Sets the number of parent elements to include in the array 'copy_history' that is returned if the post is a repost from another wall., default: 2
  ///
  /// `fields` *(array)*
  Future<Map> getById([Map<String, dynamic> params]) async {
    return _api.request('wall.getById', {
      ...?params,
    });
  }

  /// Returns a list of comments on a post on a user wall or community wall.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* User ID or community ID. Use a negative value to designate a community ID.
  ///
  /// `post_id` *(integer)* Post ID.
  ///
  /// `need_likes` *(boolean)* '1' — to return the 'likes' field, '0' — not to return the 'likes' field (default)
  ///
  /// `start_comment_id` *(integer)*
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of comments.
  ///
  /// `count` *(integer)* Number of comments to return (maximum 100).
  ///
  /// `sort` *(string)* Sort order: 'asc' — chronological, 'desc' — reverse chronological
  ///
  /// `preview_length` *(integer)* Number of characters at which to truncate comments when previewed. By default, '90'. Specify '0' if you do not want to truncate comments.
  ///
  /// `extended` *(boolean)*
  ///
  /// `fields` *(array)*
  ///
  /// `comment_id` *(integer)* Comment ID.
  ///
  /// `thread_items_count` *(integer)* Count items in threads., max: 10
  Future<Map> getComments([Map<String, dynamic> params]) async {
    return _api.request('wall.getComments', {
      ...?params,
    });
  }

  /// Returns information about reposts of a post on user wall or community wall.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* User ID or community ID. By default, current user ID. Use a negative value to designate a community ID.
  ///
  /// `post_id` *(integer)* Post ID.
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of reposts.
  ///
  /// `count` *(integer)* Number of reposts to return., default: 20, max: 1000
  Future<Map> getReposts([Map<String, dynamic> params]) async {
    return _api.request('wall.getReposts', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `owner_id` *(integer)*
  ///
  /// `post_id` *(integer)*
  Future<Map> openComments([Map<String, dynamic> params]) async {
    return _api.request('wall.openComments', {
      ...?params,
    });
  }

  /// Pins the post on wall.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the wall. By default, current user ID. Use a negative value to designate a community ID.
  ///
  /// `post_id` *(integer)* Post ID.
  Future<Map> pin([Map<String, dynamic> params]) async {
    return _api.request('wall.pin', {
      ...?params,
    });
  }

  /// Adds a new post on a user wall or community wall. Can also be used to publish suggested or scheduled posts.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* User ID or community ID. Use a negative value to designate a community ID.
  ///
  /// `friends_only` *(boolean)* '1' — post will be available to friends only, '0' — post will be available to all users (default)
  ///
  /// `from_group` *(boolean)* For a community: '1' — post will be published by the community, '0' — post will be published by the user (default)
  ///
  /// `message` *(string)* (Required if 'attachments' is not set.) Text of the post.
  ///
  /// `attachments` *(array)* (Required if 'message' is not set.) List of objects attached to the post, in the following format: "<owner_id>_<media_id>,<owner_id>_<media_id>", '' — Type of media attachment: 'photo' — photo, 'video' — video, 'audio' — audio, 'doc' — document, 'page' — wiki-page, 'note' — note, 'poll' — poll, 'album' — photo album, '<owner_id>' — ID of the media application owner. '<media_id>' — Media application ID. Example: "photo100172_166443618,photo66748_265827614", May contain a link to an external page to include in the post. Example: "photo66748_265827614,http://habrahabr.ru", "NOTE: If more than one link is being attached, an error will be thrown."
  ///
  /// `services` *(string)* List of services or websites the update will be exported to, if the user has so requested. Sample values: 'twitter', 'facebook'.
  ///
  /// `signed` *(boolean)* Only for posts in communities with 'from_group' set to '1': '1' — post will be signed with the name of the posting user, '0' — post will not be signed (default)
  ///
  /// `publish_date` *(integer)* Publication date (in Unix time). If used, posting will be delayed until the set time.
  ///
  /// `lat` *(number)* Geographical latitude of a check-in, in degrees (from -90 to 90).
  ///
  /// `long` *(number)* Geographical longitude of a check-in, in degrees (from -180 to 180).
  ///
  /// `place_id` *(integer)* ID of the location where the user was tagged.
  ///
  /// `post_id` *(integer)* Post ID. Used for publishing of scheduled and suggested posts.
  ///
  /// `guid` *(string)*
  ///
  /// `mark_as_ads` *(boolean)*
  ///
  /// `close_comments` *(boolean)*
  ///
  /// `mute_notifications` *(boolean)*
  Future<Map> post([Map<String, dynamic> params]) async {
    return _api.request('wall.post', {
      ...?params,
    });
  }

  /// Allows to create hidden post which will not be shown on the community's wall and can be used for creating an ad with type "Community post".
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* User ID or community ID. Use a negative value to designate a community ID.
  ///
  /// `message` *(string)* (Required if 'attachments' is not set.) Text of the post.
  ///
  /// `attachments` *(array)* (Required if 'message' is not set.) List of objects attached to the post, in the following format: "<owner_id>_<media_id>,<owner_id>_<media_id>", '' — Type of media attachment: 'photo' — photo, 'video' — video, 'audio' — audio, 'doc' — document, 'page' — wiki-page, 'note' — note, 'poll' — poll, 'album' — photo album, '<owner_id>' — ID of the media application owner. '<media_id>' — Media application ID. Example: "photo100172_166443618,photo66748_265827614", May contain a link to an external page to include in the post. Example: "photo66748_265827614,http://habrahabr.ru", "NOTE: If more than one link is being attached, an error will be thrown."
  ///
  /// `signed` *(boolean)* Only for posts in communities with 'from_group' set to '1': '1' — post will be signed with the name of the posting user, '0' — post will not be signed (default)
  ///
  /// `lat` *(number)* Geographical latitude of a check-in, in degrees (from -90 to 90).
  ///
  /// `long` *(number)* Geographical longitude of a check-in, in degrees (from -180 to 180).
  ///
  /// `place_id` *(integer)* ID of the location where the user was tagged.
  ///
  /// `guid` *(string)* Unique identifier to avoid duplication the same post.
  ///
  /// `link_button` *(string)* Link button ID
  ///
  /// `link_title` *(string)* Link title
  ///
  /// `link_image` *(string)* Link image url
  ///
  /// `link_video` *(string)* Link video ID in format "<owner_id>_<media_id>"
  Future<Map> postAdsStealth([Map<String, dynamic> params]) async {
    return _api.request('wall.postAdsStealth', {
      ...?params,
    });
  }

  /// Reports (submits a complaint about) a comment on a post on a user wall or community wall.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the wall.
  ///
  /// `comment_id` *(integer)* Comment ID.
  ///
  /// `reason` *(integer)* Reason for the complaint: '0' – spam, '1' – child pornography, '2' – extremism, '3' – violence, '4' – drug propaganda, '5' – adult material, '6' – insult, abuse
  Future<Map> reportComment([Map<String, dynamic> params]) async {
    return _api.request('wall.reportComment', {
      ...?params,
    });
  }

  /// Reports (submits a complaint about) a post on a user wall or community wall.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the wall.
  ///
  /// `post_id` *(integer)* Post ID.
  ///
  /// `reason` *(integer)* Reason for the complaint: '0' – spam, '1' – child pornography, '2' – extremism, '3' – violence, '4' – drug propaganda, '5' – adult material, '6' – insult, abuse
  Future<Map> reportPost([Map<String, dynamic> params]) async {
    return _api.request('wall.reportPost', {
      ...?params,
    });
  }

  /// Reposts (copies) an object to a user wall or community wall.
  ///
  /// Params:
  ///
  /// `object` *(string)* ID of the object to be reposted on the wall. Example: "wall66748_3675"
  ///
  /// `message` *(string)* Comment to be added along with the reposted object.
  ///
  /// `group_id` *(integer)* Target community ID when reposting to a community.
  ///
  /// `mark_as_ads` *(boolean)*
  ///
  /// `mute_notifications` *(boolean)*
  Future<Map> repost([Map<String, dynamic> params]) async {
    return _api.request('wall.repost', {
      ...?params,
    });
  }

  /// Restores a post deleted from a user wall or community wall.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* User ID or community ID from whose wall the post was deleted. Use a negative value to designate a community ID.
  ///
  /// `post_id` *(integer)* ID of the post to be restored.
  Future<Map> restore([Map<String, dynamic> params]) async {
    return _api.request('wall.restore', {
      ...?params,
    });
  }

  /// Restores a comment deleted from a user wall or community wall.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* User ID or community ID. Use a negative value to designate a community ID.
  ///
  /// `comment_id` *(integer)* Comment ID.
  Future<Map> restoreComment([Map<String, dynamic> params]) async {
    return _api.request('wall.restoreComment', {
      ...?params,
    });
  }

  /// Allows to search posts on user or community walls.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* user or community id. "Remember that for a community 'owner_id' must be negative."
  ///
  /// `domain` *(string)* user or community screen name.
  ///
  /// `query` *(string)* search query string.
  ///
  /// `owners_only` *(boolean)* '1' – returns only page owner's posts.
  ///
  /// `count` *(integer)* count of posts to return., default: 20, max: 100
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of posts.
  ///
  /// `extended` *(boolean)* show extended post info.
  ///
  /// `fields` *(array)*
  Future<Map> search([Map<String, dynamic> params]) async {
    return _api.request('wall.search', {
      ...?params,
    });
  }

  /// Unpins the post on wall.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the wall. By default, current user ID. Use a negative value to designate a community ID.
  ///
  /// `post_id` *(integer)* Post ID.
  Future<Map> unpin([Map<String, dynamic> params]) async {
    return _api.request('wall.unpin', {
      ...?params,
    });
  }
}
