import './api.dart';

/// Gifts class
class Gifts {
  /// API class
  API _api;

  /// Gifts
  Gifts(API api) {
    _api = api;
  }

  String toString() {
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
  Future<Map> get([Map<String, dynamic> params]) async {
    return _api.request('gifts.get', {
      ...?params,
    });
  }
}
