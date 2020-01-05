import './api.dart';

/// Newsfeed class
class Newsfeed {
  /// API class
  API _api;

  /// Newsfeed
  Newsfeed(API api) {
    _api = api;
  }

  String toString() {
    return 'Newsfeed';
  }

  /// Prevents news from specified users and communities from appearing in the current user's newsfeed.
  ///
  /// Params:
  ///
  /// `user_ids` *(array)*
  ///
  /// `group_ids` *(array)*
  Future<Map> addBan([Map<String, String> params]) async {
    return _api.request('newsfeed.addBan', {
      ...?params,
    });
  }

  /// Allows news from previously banned users and communities to be shown in the current user's newsfeed.
  ///
  /// Params:
  ///
  /// `user_ids` *(array)*
  ///
  /// `group_ids` *(array)*
  Future<Map> deleteBan([Map<String, String> params]) async {
    return _api.request('newsfeed.deleteBan', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `list_id` *(integer)*
  Future<Map> deleteList([Map<String, String> params]) async {
    return _api.request('newsfeed.deleteList', {
      ...?params,
    });
  }

  /// Returns data required to show newsfeed for the current user.
  ///
  /// Params:
  ///
  /// `filters` *(array)* Filters to apply: 'post' — new wall posts, 'photo' — new photos, 'photo_tag' — new photo tags, 'wall_photo' — new wall photos, 'friend' — new friends, 'note' — new notes
  ///
  /// `return_banned` *(boolean)* '1' — to return news items from banned sources
  ///
  /// `start_time` *(integer)* Earliest timestamp (in Unix time) of a news item to return. By default, 24 hours ago.
  ///
  /// `end_time` *(integer)* Latest timestamp (in Unix time) of a news item to return. By default, the current time.
  ///
  /// `max_photos` *(integer)* Maximum number of photos to return. By default, '5'.
  ///
  /// `source_ids` *(string)* Sources to obtain news from, separated by commas. User IDs can be specified in formats '' or 'u' , where '' is the user's friend ID. Community IDs can be specified in formats '-' or 'g' , where '' is the community ID. If the parameter is not set, all of the user's friends and communities are returned, except for banned sources, which can be obtained with the [newsfeed.getBanned](https://vk.com/dev/newsfeed.getBanned) method.
  ///
  /// `start_from` *(string)* identifier required to get the next page of results. Value for this parameter is returned in 'next_from' field in a reply.
  ///
  /// `count` *(integer)* Number of news items to return (default 50, maximum 100). For auto feed, you can use the 'new_offset' parameter returned by this method.
  ///
  /// `fields` *(array)* Additional fields of [communities](https://vk.com/dev/fields|profiles] and [vk.com/dev/fields_groups) to return.
  ///
  /// `section` *(string)*
  Future<Map> get([Map<String, String> params]) async {
    return _api.request('newsfeed.get', {
      ...?params,
    });
  }

  /// Returns a list of users and communities banned from the current user's newsfeed.
  ///
  /// Params:
  ///
  /// `extended` *(boolean)* '1' — return extra information about users and communities
  ///
  /// `fields` *(array)* Profile fields to return.
  ///
  /// `name_case` *(string)* Case for declension of user name and surname: 'nom' — nominative (default), 'gen' — genitive , 'dat' — dative, 'acc' — accusative , 'ins' — instrumental , 'abl' — prepositional
  Future<Map> getBanned([Map<String, String> params]) async {
    return _api.request('newsfeed.getBanned', {
      ...?params,
    });
  }

  /// Returns a list of comments in the current user's newsfeed.
  ///
  /// Params:
  ///
  /// `count` *(integer)* Number of comments to return. For auto feed, you can use the 'new_offset' parameter returned by this method., default: 30, max: 100
  ///
  /// `filters` *(array)* Filters to apply: 'post' — new comments on wall posts, 'photo' — new comments on photos, 'video' — new comments on videos, 'topic' — new comments on discussions, 'note' — new comments on notes,
  ///
  /// `reposts` *(string)* Object ID, comments on repost of which shall be returned, e.g. 'wall1_45486'. (If the parameter is set, the 'filters' parameter is optional.),
  ///
  /// `start_time` *(integer)* Earliest timestamp (in Unix time) of a comment to return. By default, 24 hours ago.
  ///
  /// `end_time` *(integer)* Latest timestamp (in Unix time) of a comment to return. By default, the current time.
  ///
  /// `last_comments_count` *(integer)*, max: 10
  ///
  /// `start_from` *(string)* Identificator needed to return the next page with results. Value for this parameter returns in 'next_from' field.
  ///
  /// `fields` *(array)* Additional fields of [communities](https://vk.com/dev/fields|profiles] and [vk.com/dev/fields_groups) to return.
  Future<Map> getComments([Map<String, String> params]) async {
    return _api.request('newsfeed.getComments', {
      ...?params,
    });
  }

  /// Returns a list of newsfeeds followed by the current user.
  ///
  /// Params:
  ///
  /// `list_ids` *(array)* numeric list identifiers.
  ///
  /// `extended` *(boolean)* Return additional list info
  Future<Map> getLists([Map<String, String> params]) async {
    return _api.request('newsfeed.getLists', {
      ...?params,
    });
  }

  /// Returns a list of posts on user walls in which the current user is mentioned.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* Owner ID.
  ///
  /// `start_time` *(integer)* Earliest timestamp (in Unix time) of a post to return. By default, 24 hours ago.
  ///
  /// `end_time` *(integer)* Latest timestamp (in Unix time) of a post to return. By default, the current time.
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of posts.
  ///
  /// `count` *(integer)* Number of posts to return., default: 20, max: 50
  Future<Map> getMentions([Map<String, String> params]) async {
    return _api.request('newsfeed.getMentions', {
      ...?params,
    });
  }

  /// , Returns a list of newsfeeds recommended to the current user.
  ///
  /// Params:
  ///
  /// `start_time` *(integer)* Earliest timestamp (in Unix time) of a news item to return. By default, 24 hours ago.
  ///
  /// `end_time` *(integer)* Latest timestamp (in Unix time) of a news item to return. By default, the current time.
  ///
  /// `max_photos` *(integer)* Maximum number of photos to return. By default, '5'.
  ///
  /// `start_from` *(string)* 'new_from' value obtained in previous call.
  ///
  /// `count` *(integer)* Number of news items to return.
  ///
  /// `fields` *(array)* Additional fields of [communities](https://vk.com/dev/fields|profiles] and [vk.com/dev/fields_groups) to return.
  Future<Map> getRecommended([Map<String, String> params]) async {
    return _api.request('newsfeed.getRecommended', {
      ...?params,
    });
  }

  /// Returns communities and users that current user is suggested to follow.
  ///
  /// Params:
  ///
  /// `offset` *(integer)* offset required to choose a particular subset of communities or users.
  ///
  /// `count` *(integer)* amount of communities or users to return., default: 20, max: 1000
  ///
  /// `shuffle` *(boolean)* shuffle the returned list or not.
  ///
  /// `fields` *(array)* list of extra fields to be returned. See available fields for [communities](https://vk.com/dev/fields|users] and [vk.com/dev/fields_groups).
  Future<Map> getSuggestedSources([Map<String, String> params]) async {
    return _api.request('newsfeed.getSuggestedSources', {
      ...?params,
    });
  }

  /// Hides an item from the newsfeed.
  ///
  /// Params:
  ///
  /// `type` *(string)* Item type. Possible values: *'wall' – post on the wall,, *'tag' – tag on a photo,, *'profilephoto' – profile photo,, *'video' – video,, *'audio' – audio.
  ///
  /// `owner_id` *(integer)* Item owner's identifier (user or community), "Note that community id must be negative. 'owner_id=1' – user , 'owner_id=-1' – community "
  ///
  /// `item_id` *(integer)* Item identifier
  Future<Map> ignoreItem([Map<String, String> params]) async {
    return _api.request('newsfeed.ignoreItem', {
      ...?params,
    });
  }

  /// Creates and edits user newsfeed lists
  ///
  /// Params:
  ///
  /// `list_id` *(integer)* numeric list identifier (if not sent, will be set automatically).
  ///
  /// `title` *(string)* list name.
  ///
  /// `source_ids` *(array)* users and communities identifiers to be added to the list. Community identifiers must be negative numbers.
  ///
  /// `no_reposts` *(boolean)* reposts display on and off ('1' is for off).
  Future<Map> saveList([Map<String, String> params]) async {
    return _api.request('newsfeed.saveList', {
      ...?params,
    });
  }

  /// Returns search results by statuses.
  ///
  /// Params:
  ///
  /// `q` *(string)* Search query string (e.g., 'New Year').
  ///
  /// `extended` *(boolean)* '1' — to return additional information about the user or community that placed the post.
  ///
  /// `count` *(integer)* Number of posts to return., default: 30, max: 200
  ///
  /// `latitude` *(number)* Geographical latitude point (in degrees, -90 to 90) within which to search.
  ///
  /// `longitude` *(number)* Geographical longitude point (in degrees, -180 to 180) within which to search.
  ///
  /// `start_time` *(integer)* Earliest timestamp (in Unix time) of a news item to return. By default, 24 hours ago.
  ///
  /// `end_time` *(integer)* Latest timestamp (in Unix time) of a news item to return. By default, the current time.
  ///
  /// `start_from` *(string)*
  ///
  /// `fields` *(array)* Additional fields of [communities](https://vk.com/dev/fields|profiles] and [vk.com/dev/fields_groups) to return.
  Future<Map> search([Map<String, String> params]) async {
    return _api.request('newsfeed.search', {
      ...?params,
    });
  }

  /// Returns a hidden item to the newsfeed.
  ///
  /// Params:
  ///
  /// `type` *(string)* Item type. Possible values: *'wall' – post on the wall,, *'tag' – tag on a photo,, *'profilephoto' – profile photo,, *'video' – video,, *'audio' – audio.
  ///
  /// `owner_id` *(integer)* Item owner's identifier (user or community), "Note that community id must be negative. 'owner_id=1' – user , 'owner_id=-1' – community "
  ///
  /// `item_id` *(integer)* Item identifier
  Future<Map> unignoreItem([Map<String, String> params]) async {
    return _api.request('newsfeed.unignoreItem', {
      ...?params,
    });
  }

  /// Unsubscribes the current user from specified newsfeeds.
  ///
  /// Params:
  ///
  /// `type` *(string)* Type of object from which to unsubscribe: 'note' — note, 'photo' — photo, 'post' — post on user wall or community wall, 'topic' — topic, 'video' — video
  ///
  /// `owner_id` *(integer)* Object owner ID.
  ///
  /// `item_id` *(integer)* Object ID.
  Future<Map> unsubscribe([Map<String, String> params]) async {
    return _api.request('newsfeed.unsubscribe', {
      ...?params,
    });
  }
}
