import './api.dart';

/// Apps class
class Apps {
  /// API class
  API _api;

  /// Apps
  Apps(API api) {
    _api = api;
  }

  toString() {
    return 'Apps';
  }

  /// Deletes all request notifications from the current app.
  ///
  /// Params: none
  Future<Map> deleteAppRequests([Map<String, String> params]) async {
    return _api.request('apps.deleteAppRequests', {
      ...?params,
    });
  }

  /// Returns applications data.
  ///
  /// Params:
  ///
  /// `app_id` *(integer)* Application ID
  ///
  /// `app_ids` *(array)* List of application ID
  ///
  /// `platform` *(string)* platform. Possible values: *'ios' — iOS,, *'android' — Android,, *'winphone' — Windows Phone,, *'web' — приложения на vk.com. By default: 'web'., default: web
  ///
  /// `extended` *(boolean)*
  ///
  /// `return_friends` *(boolean)*
  ///
  /// `fields` *(array)* Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'contacts', 'education', 'online', 'counters', 'relation', 'last_seen', 'activity', 'can_write_private_message', 'can_see_all_posts', 'can_post', 'universities', (only if return_friends - 1)
  ///
  /// `name_case` *(string)* Case for declension of user name and surname: 'nom' — nominative (default),, 'gen' — genitive,, 'dat' — dative,, 'acc' — accusative,, 'ins' — instrumental,, 'abl' — prepositional. (only if 'return_friends' = '1')
  Future<Map> get([Map<String, String> params]) async {
    return _api.request('apps.get', {
      ...?params,
    });
  }

  /// Returns a list of applications (apps) available to users in the App Catalog.
  ///
  /// Params:
  ///
  /// `sort` *(string)* Sort order: 'popular_today' — popular for one day (default), 'visitors' — by visitors number , 'create_date' — by creation date, 'growth_rate' — by growth rate, 'popular_week' — popular for one week
  ///
  /// `offset` *(integer)* Offset required to return a specific subset of apps.
  ///
  /// `count` *(integer)* Number of apps to return., default: 100
  ///
  /// `platform` *(string)*
  ///
  /// `extended` *(boolean)* '1' — to return additional fields 'screenshots', 'MAU', 'catalog_position', and 'international'. If set, 'count' must be less than or equal to '100'. '0' — not to return additional fields (default).
  ///
  /// `return_friends` *(boolean)*
  ///
  /// `fields` *(array)*
  ///
  /// `name_case` *(string)*
  ///
  /// `q` *(string)* Search query string.
  ///
  /// `genre_id` *(integer)*
  ///
  /// `filter` *(string)* 'installed' — to return list of installed apps (only for mobile platform).
  Future<Map> getCatalog([Map<String, String> params]) async {
    return _api.request('apps.getCatalog', {
      ...?params,
    });
  }

  /// Creates friends list for requests and invites in current app.
  ///
  /// Params:
  ///
  /// `extended` *(boolean)*
  ///
  /// `count` *(integer)* List size., default: 20, max: 5000
  ///
  /// `offset` *(integer)*
  ///
  /// `type` *(string)* List type. Possible values: * 'invite' — available for invites (don't play the game),, * 'request' — available for request (play the game). By default: 'invite'., default: invite
  ///
  /// `fields` *(array)* Additional profile fields, see [description](https://vk.com/dev/fields).
  Future<Map> getFriendsList([Map<String, String> params]) async {
    return _api.request('apps.getFriendsList', {
      ...?params,
    });
  }

  /// Returns players rating in the game.
  ///
  /// Params:
  ///
  /// `type` *(string)* Leaderboard type. Possible values: *'level' — by level,, *'points' — by mission points,, *'score' — by score ().
  ///
  /// `global` *(boolean)* Rating type. Possible values: *'1' — global rating among all players,, *'0' — rating among user friends., default: 1
  ///
  /// `extended` *(boolean)* 1 — to return additional info about users
  Future<Map> getLeaderboard([Map<String, String> params]) async {
    return _api.request('apps.getLeaderboard', {
      ...?params,
    });
  }

  /// Returns scopes for auth
  ///
  /// Params:
  ///
  /// `type` *(string)*, default: user
  Future<Map> getScopes([Map<String, String> params]) async {
    return _api.request('apps.getScopes', {
      ...?params,
    });
  }

  /// Returns user score in app
  ///
  /// Params:
  ///
  /// `user_id` *(integer)*
  Future<Map> getScore([Map<String, String> params]) async {
    return _api.request('apps.getScore', {
      ...?params,
    });
  }

  /// Sends a request to another user in an app that uses VK authorization.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* id of the user to send a request
  ///
  /// `text` *(string)* request text
  ///
  /// `type` *(string)* request type. Values: 'invite' – if the request is sent to a user who does not have the app installed,, 'request' – if a user has already installed the app, default: request
  ///
  /// `name` *(string)*
  ///
  /// `key` *(string)* special string key to be sent with the request
  ///
  /// `separate` *(boolean)*
  Future<Map> sendRequest([Map<String, String> params]) async {
    return _api.request('apps.sendRequest', {
      ...?params,
    });
  }
}
