import './api.dart';

/// Storage class
class Storage {
  /// API class
  API _api;

  /// Storage
  Storage(API api) {
    _api = api;
  }

  String toString() {
    return 'Storage';
  }

  /// Returns a value of variable with the name set by key parameter.
  ///
  /// Params:
  ///
  /// `key` *(string)*
  ///
  /// `keys` *(array)*
  ///
  /// `user_id` *(integer)*
  ///
  /// `global` *(boolean)*
  Future<Map> get([Map<String, dynamic> params]) async {
    return _api.request('storage.get', {
      ...?params,
    });
  }

  /// Returns the names of all variables.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* user id, whose variables names are returned if they were requested with a server method.
  ///
  /// `global` *(boolean)*
  ///
  /// `offset` *(integer)*
  ///
  /// `count` *(integer)* amount of variable names the info needs to be collected from., default: 100, max: 1000
  Future<Map> getKeys([Map<String, dynamic> params]) async {
    return _api.request('storage.getKeys', {
      ...?params,
    });
  }

  /// Saves a value of variable with the name set by 'key' parameter.
  ///
  /// Params:
  ///
  /// `key` *(string)*
  ///
  /// `value` *(string)*
  ///
  /// `user_id` *(integer)*
  ///
  /// `global` *(boolean)*
  Future<Map> set([Map<String, dynamic> params]) async {
    return _api.request('storage.set', {
      ...?params,
    });
  }
}
