import 'api.dart';

/// Auth class
class Auth {
  /// API class
  API _api;

  /// Auth
  Auth(API api) {
    _api = api;
  }

  @override
  String toString() {
    return 'Auth';
  }

  /// Checks a user's phone number for correctness.
  ///
  /// Params:
  ///
  /// `phone` *(string)* Phone number.
  ///
  /// `client_id` *(integer)* User ID.
  ///
  /// `client_secret` *(string)*
  ///
  /// `auth_by_phone` *(boolean)*
  Future<dynamic> checkPhone([Map<String, dynamic> params]) async {
    return _api.request('auth.checkPhone', {
      ...?params,
    });
  }

  /// Allows to restore account access using a code received via SMS. " This method is only available for apps with [Direct authorization](https://vk.com/dev/auth_direct) access. "
  ///
  /// Params:
  ///
  /// `phone` *(string)* User phone number.
  ///
  /// `last_name` *(string)* User last name.
  Future<dynamic> restore([Map<String, dynamic> params]) async {
    return _api.request('auth.restore', {
      ...?params,
    });
  }
}
