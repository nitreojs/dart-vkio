import './api.dart';

/// Likes class
class Likes {
  /// API class
  API _api;

  /// Likes
  Likes(API api) {
    this._api = api;
  }

  toString() {
    return 'Likes';
  }

  /// Adds the specified object to the 'Likes' list of the current user.
  ///
  /// Params:
  ///
  /// `type` *(string)* Object type: 'post' — post on user or community wall, 'comment' — comment on a wall post, 'photo' — photo, 'audio' — audio, 'video' — video, 'note' — note, 'photo_comment' — comment on the photo, 'video_comment' — comment on the video, 'topic_comment' — comment in the discussion, 'sitepage' — page of the site where the [Like widget](https://vk.com/dev/Like) is installed
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the object.
  ///
  /// `item_id` *(integer)* Object ID.
  ///
  /// `access_key` *(string)* Access key required for an object owned by a private entity.
  Future<Map> add([Map<String, String> params]) async {
    return this._api.request('likes.add', {
      ...?params,
    });
  }

  /// Deletes the specified object from the 'Likes' list of the current user.
  ///
  /// Params:
  ///
  /// `type` *(string)* Object type: 'post' — post on user or community wall, 'comment' — comment on a wall post, 'photo' — photo, 'audio' — audio, 'video' — video, 'note' — note, 'photo_comment' — comment on the photo, 'video_comment' — comment on the video, 'topic_comment' — comment in the discussion, 'sitepage' — page of the site where the [Like widget](https://vk.com/dev/Like) is installed
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the object.
  ///
  /// `item_id` *(integer)* Object ID.
  Future<Map> delete([Map<String, String> params]) async {
    return this._api.request('likes.delete', {
      ...?params,
    });
  }

  /// Returns a list of IDs of users who added the specified object to their 'Likes' list.
  ///
  /// Params:
  ///
  /// `type` *(string)* , Object type: 'post' — post on user or community wall, 'comment' — comment on a wall post, 'photo' — photo, 'audio' — audio, 'video' — video, 'note' — note, 'photo_comment' — comment on the photo, 'video_comment' — comment on the video, 'topic_comment' — comment in the discussion, 'sitepage' — page of the site where the [Like widget](https://vk.com/dev/Like) is installed
  ///
  /// `owner_id` *(integer)* ID of the user, community, or application that owns the object. If the 'type' parameter is set as 'sitepage', the application ID is passed as 'owner_id'. Use negative value for a community id. If the 'type' parameter is not set, the 'owner_id' is assumed to be either the current user or the same application ID as if the 'type' parameter was set to 'sitepage'.
  ///
  /// `item_id` *(integer)* Object ID. If 'type' is set as 'sitepage', 'item_id' can include the 'page_id' parameter value used during initialization of the [Like widget](https://vk.com/dev/Like).
  ///
  /// `page_url` *(string)* URL of the page where the [Like widget](https://vk.com/dev/Like) is installed. Used instead of the 'item_id' parameter.
  ///
  /// `filter` *(string)* Filters to apply: 'likes' — returns information about all users who liked the object (default), 'copies' — returns information only about users who told their friends about the object
  ///
  /// `friends_only` *(integer)* Specifies which users are returned: '1' — to return only the current user's friends, '0' — to return all users (default)
  ///
  /// `extended` *(boolean)* Specifies whether extended information will be returned. '1' — to return extended information about users and communities from the 'Likes' list, '0' — to return no additional information (default)
  ///
  /// `offset` *(integer)* Offset needed to select a specific subset of users.
  ///
  /// `count` *(integer)* Number of user IDs to return (maximum '1000'). Default is '100' if 'friends_only' is set to '0', otherwise, the default is '10' if 'friends_only' is set to '1'.
  ///
  /// `skip_own` *(boolean)*
  Future<Map> getList([Map<String, String> params]) async {
    return this._api.request('likes.getList', {
      ...?params,
    });
  }

  /// Checks for the object in the 'Likes' list of the specified user.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* User ID.
  ///
  /// `type` *(string)* Object type: 'post' — post on user or community wall, 'comment' — comment on a wall post, 'photo' — photo, 'audio' — audio, 'video' — video, 'note' — note, 'photo_comment' — comment on the photo, 'video_comment' — comment on the video, 'topic_comment' — comment in the discussion
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the object.
  ///
  /// `item_id` *(integer)* Object ID.
  Future<Map> isLiked([Map<String, String> params]) async {
    return this._api.request('likes.isLiked', {
      ...?params,
    });
  }
}
