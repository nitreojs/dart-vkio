import './api.dart';

/// Status class
class Status {
  /// API class
  API _api;

  /// Status
  Status(API api) {
    _api = api;
  }

  String toString() {
    return 'Status';
  }

  /// Returns data required to show the status of a user or community.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* User ID or community ID. Use a negative value to designate a community ID.
  ///
  /// `group_id` *(integer)*
  Future<Map> get([Map<String, dynamic> params]) async {
    return _api.request('status.get', {
      ...?params,
    });
  }

  /// Sets a new status for the current user.
  ///
  /// Params:
  ///
  /// `text` *(string)* Text of the new status.
  ///
  /// `group_id` *(integer)* Identifier of a community to set a status in. If left blank the status is set to current user.
  Future<Map> set([Map<String, dynamic> params]) async {
    return _api.request('status.set', {
      ...?params,
    });
  }
}
