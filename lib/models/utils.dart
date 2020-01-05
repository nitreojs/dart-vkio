import './api.dart';

/// Utils class
class Utils {
  /// API class
  API _api;

  /// Utils
  Utils(API api) {
    _api = api;
  }

  String toString() {
    return 'Utils';
  }

  /// Checks whether a link is blocked in VK.
  ///
  /// Params:
  ///
  /// `url` *(string)* Link to check (e.g., 'http://google.com').
  Future<Map> checkLink([Map<String, String> params]) async {
    return _api.request('utils.checkLink', {
      ...?params,
    });
  }

  /// Deletes shortened link from user's list.
  ///
  /// Params:
  ///
  /// `key` *(string)* Link key (characters after vk.cc/).
  Future<Map> deleteFromLastShortened([Map<String, String> params]) async {
    return _api.request('utils.deleteFromLastShortened', {
      ...?params,
    });
  }

  /// Returns a list of user's shortened links.
  ///
  /// Params:
  ///
  /// `count` *(integer)* Number of links to return., default: 10
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of links.
  Future<Map> getLastShortenedLinks([Map<String, String> params]) async {
    return _api.request('utils.getLastShortenedLinks', {
      ...?params,
    });
  }

  /// Returns stats data for shortened link.
  ///
  /// Params:
  ///
  /// `key` *(string)* Link key (characters after vk.cc/).
  ///
  /// `source` *(string)* Source of scope, default: vk_cc
  ///
  /// `access_key` *(string)* Access key for private link stats.
  ///
  /// `interval` *(string)* Interval., default: day
  ///
  /// `intervals_count` *(integer)* Number of intervals to return., default: 1, max: 100
  ///
  /// `extended` *(boolean)* 1 — to return extended stats data (sex, age, geo). 0 — to return views number only.
  Future<Map> getLinkStats([Map<String, String> params]) async {
    return _api.request('utils.getLinkStats', {
      ...?params,
    });
  }

  /// Returns the current time of the VK server.
  ///
  /// Params: none
  Future<Map> getServerTime([Map<String, String> params]) async {
    return _api.request('utils.getServerTime', {
      ...?params,
    });
  }

  /// Allows to receive a link shortened via vk.cc.
  ///
  /// Params:
  ///
  /// `url` *(string)* URL to be shortened.
  ///
  /// `private` *(boolean)* 1 — private stats, 0 — public stats.
  Future<Map> getShortLink([Map<String, String> params]) async {
    return _api.request('utils.getShortLink', {
      ...?params,
    });
  }

  /// Detects a type of object (e.g., user, community, application) and its ID by screen name.
  ///
  /// Params:
  ///
  /// `screen_name` *(string)* Screen name of the user, community (e.g., 'apiclub,' 'andrew', or 'rules_of_war'), or application.
  Future<Map> resolveScreenName([Map<String, String> params]) async {
    return _api.request('utils.resolveScreenName', {
      ...?params,
    });
  }
}
