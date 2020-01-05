import './api.dart';

/// Stories class
class Stories {
  /// API class
  API _api;

  /// Stories
  Stories(API api) {
    _api = api;
  }

  String toString() {
    return 'Stories';
  }

  /// Allows to hide stories from chosen sources from current user's feed.
  ///
  /// Params:
  ///
  /// `owners_ids` *(array)* List of sources IDs
  Future<Map> banOwner([Map<String, dynamic> params]) async {
    return _api.request('stories.banOwner', {
      ...?params,
    });
  }

  /// Allows to delete story.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* Story owner's ID. Current user id is used by default.
  ///
  /// `story_id` *(integer)* Story ID.
  Future<Map> delete([Map<String, dynamic> params]) async {
    return _api.request('stories.delete', {
      ...?params,
    });
  }

  /// Returns stories available for current user.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* Owner ID.
  ///
  /// `extended` *(boolean)* '1' — to return additional fields for users and communities. Default value is 0.
  Future<Map> get([Map<String, dynamic> params]) async {
    return _api.request('stories.get', {
      ...?params,
    });
  }

  /// Returns list of sources hidden from current user's feed.
  ///
  /// Params:
  ///
  /// `extended` *(boolean)* '1' — to return additional fields for users and communities. Default value is 0.
  ///
  /// `fields` *(array)* Additional fields to return
  Future<Map> getBanned([Map<String, dynamic> params]) async {
    return _api.request('stories.getBanned', {
      ...?params,
    });
  }

  /// Returns story by its ID.
  ///
  /// Params:
  ///
  /// `stories` *(array)* Stories IDs separated by commas. Use format {owner_id}+'_'+{story_id}, for example, 12345_54331.
  ///
  /// `extended` *(boolean)* '1' — to return additional fields for users and communities. Default value is 0.
  ///
  /// `fields` *(array)* Additional fields to return
  Future<Map> getById([Map<String, dynamic> params]) async {
    return _api.request('stories.getById', {
      ...?params,
    });
  }

  /// Returns URL for uploading a story with photo.
  ///
  /// Params:
  ///
  /// `add_to_news` *(boolean)* 1 — to add the story to friend's feed.
  ///
  /// `user_ids` *(array)* List of users IDs who can see the story.
  ///
  /// `reply_to_story` *(string)* ID of the story to reply with the current.
  ///
  /// `link_text` *(string)* Link text (for community's stories only).
  ///
  /// `link_url` *(string)* Link URL. Internal links on https://vk.com only.
  ///
  /// `group_id` *(integer)* ID of the community to upload the story (should be verified or with the "fire" icon).
  Future<Map> getPhotoUploadServer([Map<String, dynamic> params]) async {
    return _api.request('stories.getPhotoUploadServer', {
      ...?params,
    });
  }

  /// Returns replies to the story.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* Story owner ID.
  ///
  /// `story_id` *(integer)* Story ID.
  ///
  /// `access_key` *(string)* Access key for the private object.
  ///
  /// `extended` *(boolean)* '1' — to return additional fields for users and communities. Default value is 0.
  ///
  /// `fields` *(array)* Additional fields to return
  Future<Map> getReplies([Map<String, dynamic> params]) async {
    return _api.request('stories.getReplies', {
      ...?params,
    });
  }

  /// Returns stories available for current user.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* Story owner ID.
  ///
  /// `story_id` *(integer)* Story ID.
  Future<Map> getStats([Map<String, dynamic> params]) async {
    return _api.request('stories.getStats', {
      ...?params,
    });
  }

  /// Allows to receive URL for uploading story with video.
  ///
  /// Params:
  ///
  /// `add_to_news` *(boolean)* 1 — to add the story to friend's feed.
  ///
  /// `user_ids` *(array)* List of users IDs who can see the story.
  ///
  /// `reply_to_story` *(string)* ID of the story to reply with the current.
  ///
  /// `link_text` *(string)* Link text (for community's stories only).
  ///
  /// `link_url` *(string)* Link URL. Internal links on https://vk.com only.
  ///
  /// `group_id` *(integer)* ID of the community to upload the story (should be verified or with the "fire" icon).
  Future<Map> getVideoUploadServer([Map<String, dynamic> params]) async {
    return _api.request('stories.getVideoUploadServer', {
      ...?params,
    });
  }

  /// Returns a list of story viewers.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* Story owner ID.
  ///
  /// `story_id` *(integer)* Story ID.
  ///
  /// `count` *(integer)* Maximum number of results., default: 100
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of results.
  ///
  /// `extended` *(boolean)* '1' — to return detailed information about photos
  Future<Map> getViewers([Map<String, dynamic> params]) async {
    return _api.request('stories.getViewers', {
      ...?params,
    });
  }

  /// Hides all replies in the last 24 hours from the user to current user's stories.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user whose replies should be hidden.
  ///
  /// `group_id` *(integer)*
  Future<Map> hideAllReplies([Map<String, dynamic> params]) async {
    return _api.request('stories.hideAllReplies', {
      ...?params,
    });
  }

  /// Hides the reply to the current user's story.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user whose replies should be hidden.
  ///
  /// `story_id` *(integer)* Story ID.
  ///
  /// `access_key` *(string)* Access key for the private object.
  Future<Map> hideReply([Map<String, dynamic> params]) async {
    return _api.request('stories.hideReply', {
      ...?params,
    });
  }

  /// Allows to show stories from hidden sources in current user's feed.
  ///
  /// Params:
  ///
  /// `owners_ids` *(array)* List of hidden sources to show stories from.
  Future<Map> unbanOwner([Map<String, dynamic> params]) async {
    return _api.request('stories.unbanOwner', {
      ...?params,
    });
  }
}
