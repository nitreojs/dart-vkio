import 'dart:convert';

import 'package:http/http.dart' as http;

import '../vk.dart';

enum ClientType {
  ANDROID,
  IPHONE,
  IPAD,
  WINDOWS_PHONE,
  VK_ME,
  KATE,
  WINDOWS,
}

/// Authorization class
class Authorization {
  final Map<ClientType, Map<String, dynamic>> _clients = {
    ClientType.ANDROID: {'id': 2274003, 'secret': 'hHbZxrka2uZ6jB1inYsH'},
    ClientType.IPHONE: {'id': 3140623, 'secret': 'VeWdmVclDCtn6ihuP1nt'},
    ClientType.IPAD: {'id': 3682744, 'secret': 'mY6CDUswIVdJLCD3j15n'},
    ClientType.WINDOWS_PHONE: {'id': 3502557, 'secret': 'PEObAuQi6KloPM4T30DV'},
    ClientType.VK_ME: {'id': 5027722, 'secret': 'Skg1Tn1r2qEbbZIAJMx3'},
    ClientType.KATE: {'id': 2685278, 'secret': 'lxhD8OD7dMsqtXIm5IUY'},
    ClientType.WINDOWS: {'id': 3697615, 'secret': 'AlVXZFMUqyrnABp8ncuU'},
  };

  final VK _vk;

  Authorization(VK vk) : _vk = vk;

  @override
  String toString() {
    return 'Authorization';
  }

  String _getParamsString(Map<String, dynamic> params) {
    var paramsString = '';

    final Iterable iterable = params.entries;

    for (var entry in iterable) {
      paramsString += '${entry.key}=${entry.value}&';
    }

    return paramsString;
  }

  Map<String, dynamic> _getParams({
    Map<String, dynamic> client,
    String username,
    String password,
    int code,
  }) {
    var params = {
      'grant_type': 'password',
      'scope': 'all',
      'client_id': '${client['id']}',
      'client_secret': client['secret'],
      '2fa_supported': 'true',
      'username': username,
      'password': password,
    };

    if (code != null) {
      params['code'] = '$code';
    }

    return params;
  }

  Future<Map> _doSetting({
    ClientType clientName,
    String username,
    String password,
    int code,
  }) {
    var client = _clients[clientName];

    final params = _getParams(
      client: client,
      username: username,
      password: password,
      code: code,
    );

    var paramsString = _getParamsString(params);

    return _request(paramsString);
  }

  Future<Map> _request(String paramsString) async {
    var response = await http.get('https://oauth.vk.com/token?$paramsString');
    Map json = jsonDecode(response.body);

    if (json['error'] == null) {
      _vk.options['token'] = json['access_token'];
    }

    return json;
  }

  /// Authorizes via Android.
  ///
  /// Params:
  ///
  /// `username` *(string)* User's phone or email.
  ///
  /// `password` *(string)* User's password.
  ///
  /// `code` *(integer)* 2FA code.
  Future<dynamic> android({
    String username,
    String password,
    int code,
  }) {
    return _doSetting(
      clientName: ClientType.ANDROID,
      username: username,
      password: password,
      code: code,
    );
  }

  /// Authorizes via iPhone.
  ///
  /// Params:
  ///
  /// `username` *(string)* User's phone or email.
  ///
  /// `password` *(string)* User's password.
  ///
  /// `code` *(integer)* 2FA code.
  Future<dynamic> iphone({
    String username,
    String password,
    int code,
  }) {
    return _doSetting(
      clientName: ClientType.IPHONE,
      username: username,
      password: password,
      code: code,
    );
  }

  /// Authorizes via iPad.
  ///
  /// Params:
  ///
  /// `username` *(string)* User's phone or email.
  ///
  /// `password` *(string)* User's password.
  ///
  /// `code` *(integer)* 2FA code.
  Future<dynamic> ipad({
    String username,
    String password,
    int code,
  }) {
    return _doSetting(
      clientName: ClientType.IPAD,
      username: username,
      password: password,
      code: code,
    );
  }

  /// Authorizes via Windows Phone.
  ///
  /// Params:
  ///
  /// `username` *(string)* User's phone or email.
  ///
  /// `password` *(string)* User's password.
  ///
  /// `code` *(integer)* 2FA code.
  Future<dynamic> windowsPhone({
    String username,
    String password,
    int code,
  }) {
    return _doSetting(
      clientName: ClientType.WINDOWS_PHONE,
      username: username,
      password: password,
      code: code,
    );
  }

  /// Authorizes via VK Messenger.
  ///
  /// Params:
  ///
  /// `username` *(string)* User's phone or email.
  ///
  /// `password` *(string)* User's password.
  ///
  /// `code` *(integer)* 2FA code.
  Future<dynamic> vkMe({
    String username,
    String password,
    int code,
  }) {
    return _doSetting(
      clientName: ClientType.VK_ME,
      username: username,
      password: password,
      code: code,
    );
  }

  /// Authorizes via Kate Mobile.
  ///
  /// Params:
  ///
  /// `username` *(string)* User's phone or email.
  ///
  /// `password` *(string)* User's password.
  ///
  /// `code` *(integer)* 2FA code.
  Future<dynamic> kate({
    String username,
    String password,
    int code,
  }) {
    return _doSetting(
      clientName: ClientType.KATE,
      username: username,
      password: password,
      code: code,
    );
  }

  /// Authorizes via Windows (web version).
  ///
  /// Params:
  ///
  /// `username` *(string)* User's phone or email.
  ///
  /// `password` *(string)* User's password.
  ///
  /// `code` *(integer)* 2FA code.
  Future<dynamic> windows({
    String username,
    String password,
    int code,
  }) {
    return _doSetting(
      clientName: ClientType.WINDOWS,
      username: username,
      password: password,
      code: code,
    );
  }
}
