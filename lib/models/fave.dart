import './api.dart';

/// Fave class
class Fave {
  /// API class
  API _api;

  /// Fave
  Fave(API api) {
    _api = api;
  }

  String toString() {
    return 'Fave';
  }

  /// Adds a community to user faves.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID.
  Future<Map> addGroup([Map<String, dynamic> params]) async {
    return _api.request('fave.addGroup', {
      ...?params,
    });
  }

  /// Adds a link to user faves.
  ///
  /// Params:
  ///
  /// `link` *(string)* Link URL.
  Future<Map> addLink([Map<String, dynamic> params]) async {
    return _api.request('fave.addLink', {
      ...?params,
    });
  }

  /// Adds a profile to user faves.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* Profile ID.
  Future<Map> addUser([Map<String, dynamic> params]) async {
    return _api.request('fave.addUser', {
      ...?params,
    });
  }

  /// Returns a list of links that the current user has bookmarked.
  ///
  /// Params:
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of users.
  ///
  /// `count` *(integer)* Number of results to return., default: 50
  Future<Map> getLinks([Map<String, dynamic> params]) async {
    return _api.request('fave.getLinks', {
      ...?params,
    });
  }

  /// Returns market items bookmarked by current user.
  ///
  /// Params:
  ///
  /// `count` *(integer)* Number of results to return., default: 50
  ///
  /// `offset` *(integer)*
  ///
  /// `extended` *(boolean)* '1' – to return additional fields 'likes, can_comment, can_repost, photos'. By default: '0'.
  Future<Map> getMarketItems([Map<String, dynamic> params]) async {
    return _api.request('fave.getMarketItems', {
      ...?params,
    });
  }

  /// Returns a list of photos that the current user has liked.
  ///
  /// Params:
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of photos.
  ///
  /// `count` *(integer)* Number of photos to return., default: 50
  Future<Map> getPhotos([Map<String, dynamic> params]) async {
    return _api.request('fave.getPhotos', {
      ...?params,
    });
  }

  /// Returns a list of wall posts that the current user has liked.
  ///
  /// Params:
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of posts.
  ///
  /// `count` *(integer)* Number of posts to return., default: 50
  ///
  /// `extended` *(boolean)* '1' — to return additional 'wall', 'profiles', and 'groups' fields. By default: '0'.
  Future<Map> getPosts([Map<String, dynamic> params]) async {
    return _api.request('fave.getPosts', {
      ...?params,
    });
  }

  /// Returns a list of users whom the current user has bookmarked.
  ///
  /// Params:
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of users.
  ///
  /// `count` *(integer)* Number of users to return., default: 50
  Future<Map> getUsers([Map<String, dynamic> params]) async {
    return _api.request('fave.getUsers', {
      ...?params,
    });
  }

  /// Returns a list of videos that the current user has liked.
  ///
  /// Params:
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of videos.
  ///
  /// `count` *(integer)* Number of videos to return., default: 50
  ///
  /// `extended` *(boolean)* Return an additional information about videos. Also returns all owners profiles and groups.
  Future<Map> getVideos([Map<String, dynamic> params]) async {
    return _api.request('fave.getVideos', {
      ...?params,
    });
  }

  /// Removes a community from user faves.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID.
  Future<Map> removeGroup([Map<String, dynamic> params]) async {
    return _api.request('fave.removeGroup', {
      ...?params,
    });
  }

  /// Removes link from the user's faves.
  ///
  /// Params:
  ///
  /// `link_id` *(string)* Link ID (can be obtained by [faves.getLinks](https://vk.com/dev/faves.getLinks) method).
  Future<Map> removeLink([Map<String, dynamic> params]) async {
    return _api.request('fave.removeLink', {
      ...?params,
    });
  }

  /// Removes a profile from user faves.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* Profile ID.
  Future<Map> removeUser([Map<String, dynamic> params]) async {
    return _api.request('fave.removeUser', {
      ...?params,
    });
  }
}
