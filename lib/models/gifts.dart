import './api.dart';

/// Gifts class
class Gifts {
  /// API class
  API _api;

  /// Gifts
  Gifts(API api) {
    this._api = api;
  }

  toString() {
    return 'Gifts';
  }

  /// Returns a list of user gifts.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* User ID.
  ///
  /// `count` *(integer)* Number of gifts to return.
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of results.
  Future<Map> get([Map<String, String> params]) async {
    return this._api.request('gifts.get', {
      ...?params,
    });
  }
}
