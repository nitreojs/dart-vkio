import './api.dart';

/// Widgets class
class Widgets {
  /// API class
  API _api;

  /// Widgets
  Widgets(API api) {
    _api = api;
  }

  toString() {
    return 'Widgets';
  }

  /// Gets a list of comments for the page added through the [Comments widget](https://vk.com/dev/Comments).
  ///
  /// Params:
  ///
  /// `widget_api_id` *(integer)*
  ///
  /// `url` *(string)*
  ///
  /// `page_id` *(string)*
  ///
  /// `order` *(string)*, default: date
  ///
  /// `fields` *(array)*
  ///
  /// `offset` *(integer)*
  ///
  /// `count` *(integer)*, default: 10, min: 10, max: 200
  Future<Map> getComments([Map<String, String> params]) async {
    return _api.request('widgets.getComments', {
      ...?params,
    });
  }

  /// Gets a list of application/site pages where the [Like widget](https://vk.com/dev/Comments|Comments widget] or [vk.com/dev/Like) is installed.
  ///
  /// Params:
  ///
  /// `widget_api_id` *(integer)*
  ///
  /// `order` *(string)*, default: friend_likes
  ///
  /// `period` *(string)*, default: week
  ///
  /// `offset` *(integer)*
  ///
  /// `count` *(integer)*, default: 10, min: 10, max: 200
  Future<Map> getPages([Map<String, String> params]) async {
    return _api.request('widgets.getPages', {
      ...?params,
    });
  }
}
