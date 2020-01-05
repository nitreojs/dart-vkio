import 'api.dart';

/// Secure class
class Secure {
  /// API class
  API _api;

  /// Secure
  Secure(API api) {
    _api = api;
  }

  @override
  String toString() {
    return 'Secure';
  }

  /// Adds user activity information to an application
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* ID of a user to save the data
  ///
  /// `activity_id` *(integer)* there are 2 default activities: , * 1 – level. Works similar to ,, * 2 – points, saves points amount, Any other value is for saving completed missions
  ///
  /// `value` *(integer)* depends on activity_id: * 1 – number, current level number,, * 2 – number, current user's points amount, , Any other value is ignored
  Future<Map> addAppEvent([Map<String, dynamic> params]) async {
    return _api.request('secure.addAppEvent', {
      ...?params,
    });
  }

  /// Checks the user authentication in 'IFrame' and 'Flash' apps using the 'access_token' parameter.
  ///
  /// Params:
  ///
  /// `token` *(string)* client 'access_token'
  ///
  /// `ip` *(string)* user 'ip address'. Note that user may access using the 'ipv6' address, in this case it is required to transmit the 'ipv6' address. If not transmitted, the address will not be checked.
  Future<Map> checkToken([Map<String, dynamic> params]) async {
    return _api.request('secure.checkToken', {
      ...?params,
    });
  }

  /// Returns payment balance of the application in hundredth of a vote.
  ///
  /// Params: none
  Future<Map> getAppBalance([Map<String, dynamic> params]) async {
    return _api.request('secure.getAppBalance', {
      ...?params,
    });
  }

  /// Shows a list of SMS notifications sent by the application using [secure.sendSMSNotification](https://vk.com/dev/secure.sendSMSNotification) method.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)*
  ///
  /// `date_from` *(integer)* filter by start date. It is set as UNIX-time.
  ///
  /// `date_to` *(integer)* filter by end date. It is set as UNIX-time.
  ///
  /// `limit` *(integer)* number of returned posts. By default — 1000., default: 1000, max: 1000
  Future<Map> getSMSHistory([Map<String, dynamic> params]) async {
    return _api.request('secure.getSMSHistory', {
      ...?params,
    });
  }

  /// Shows history of votes transaction between users and the application.
  ///
  /// Params:
  ///
  /// `type` *(integer)*
  ///
  /// `uid_from` *(integer)*
  ///
  /// `uid_to` *(integer)*
  ///
  /// `date_from` *(integer)*
  ///
  /// `date_to` *(integer)*
  ///
  /// `limit` *(integer)*, default: 1000, max: 1000
  Future<Map> getTransactionsHistory([Map<String, dynamic> params]) async {
    return _api.request('secure.getTransactionsHistory', {
      ...?params,
    });
  }

  /// Returns one of the previously set game levels of one or more users in the application.
  ///
  /// Params:
  ///
  /// `user_ids` *(array)*
  Future<Map> getUserLevel([Map<String, dynamic> params]) async {
    return _api.request('secure.getUserLevel', {
      ...?params,
    });
  }

  /// Opens the game achievement and gives the user a sticker
  ///
  /// Params:
  ///
  /// `user_ids` *(array)*
  ///
  /// `achievement_id` *(integer)*
  Future<Map> giveEventSticker([Map<String, dynamic> params]) async {
    return _api.request('secure.giveEventSticker', {
      ...?params,
    });
  }

  /// Sends notification to the user.
  ///
  /// Params:
  ///
  /// `user_ids` *(array)*
  ///
  /// `user_id` *(integer)*
  ///
  /// `message` *(string)* notification text which should be sent in 'UTF-8' encoding ('254' characters maximum).
  Future<Map> sendNotification([Map<String, dynamic> params]) async {
    return _api.request('secure.sendNotification', {
      ...?params,
    });
  }

  /// Sends 'SMS' notification to a user's mobile device.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* ID of the user to whom SMS notification is sent. The user shall allow the application to send him/her notifications (, +1).
  ///
  /// `message` *(string)* 'SMS' text to be sent in 'UTF-8' encoding. Only Latin letters and numbers are allowed. Maximum size is '160' characters.
  Future<Map> sendSMSNotification([Map<String, dynamic> params]) async {
    return _api.request('secure.sendSMSNotification', {
      ...?params,
    });
  }

  /// Sets a counter which is shown to the user in bold in the left menu.
  ///
  /// Params:
  ///
  /// `counters` *(array)*
  ///
  /// `user_id` *(integer)*
  ///
  /// `counter` *(integer)* counter value.
  ///
  /// `increment` *(boolean)*
  Future<Map> setCounter([Map<String, dynamic> params]) async {
    return _api.request('secure.setCounter', {
      ...?params,
    });
  }
}
