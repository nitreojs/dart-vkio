import './api.dart';

/// Account class
class Account {
  /// API class
  API _api;

  /// Account
  Account(API api) {
    this._api = api;
  }

  toString() {
    return 'Account';
  }

  /// Params:
  ///
  /// `owner_id` *(integer)*
  Future<Map> ban([Map<String, String> params]) async {
    return this._api.request('account.ban', {
      ...?params,
    });
  }

  /// Changes a user password after access is successfully restored with the [auth.restore](https://vk.com/dev/auth.restore) method.
  ///
  /// Params:
  ///
  /// `restore_sid` *(string)* Session id received after the [auth.restore](https://vk.com/dev/auth.restore) method is executed. (If the password is changed right after the access was restored)
  ///
  /// `change_password_hash` *(string)* Hash received after a successful OAuth authorization with a code got by SMS. (If the password is changed right after the access was restored)
  ///
  /// `old_password` *(string)* Current user password.
  ///
  /// `new_password` *(string)* New password that will be set as a current
  Future<Map> changePassword([Map<String, String> params]) async {
    return this._api.request('account.changePassword', {
      ...?params,
    });
  }

  /// Returns a list of active ads (offers) which executed by the user will bring him/her respective number of votes to his balance in the application.
  ///
  /// Params:
  ///
  /// `offset` *(integer)*
  ///
  /// `count` *(integer)* Number of results to return., default: 100, max: 100
  Future<Map> getActiveOffers([Map<String, String> params]) async {
    return this._api.request('account.getActiveOffers', {
      ...?params,
    });
  }

  /// Gets settings of the user in this application.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* User ID whose settings information shall be got. By default: current user.
  Future<Map> getAppPermissions([Map<String, String> params]) async {
    return this._api.request('account.getAppPermissions', {
      ...?params,
    });
  }

  /// Returns a user's blacklist.
  ///
  /// Params:
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of results.
  ///
  /// `count` *(integer)* Number of results to return., default: 20, max: 200
  Future<Map> getBanned([Map<String, String> params]) async {
    return this._api.request('account.getBanned', {
      ...?params,
    });
  }

  /// Returns non-null values of user counters.
  ///
  /// Params:
  ///
  /// `filter` *(array)* Counters to be returned.
  Future<Map> getCounters([Map<String, String> params]) async {
    return this._api.request('account.getCounters', {
      ...?params,
    });
  }

  /// Returns current account info.
  ///
  /// Params:
  ///
  /// `fields` *(array)* Fields to return. Possible values: *'country' — user country,, *'https_required' — is "HTTPS only" option enabled,, *'own_posts_default' — is "Show my posts only" option is enabled,, *'no_wall_replies' — are wall replies disabled or not,, *'intro' — is intro passed by user or not,, *'lang' — user language. By default: all.
  Future<Map> getInfo([Map<String, String> params]) async {
    return this._api.request('account.getInfo', {
      ...?params,
    });
  }

  /// Returns the current account info.
  ///
  /// Params: none
  Future<Map> getProfileInfo([Map<String, String> params]) async {
    return this._api.request('account.getProfileInfo', {
      ...?params,
    });
  }

  /// Gets settings of push notifications.
  ///
  /// Params:
  ///
  /// `device_id` *(string)* Unique device ID.
  Future<Map> getPushSettings([Map<String, String> params]) async {
    return this._api.request('account.getPushSettings', {
      ...?params,
    });
  }

  /// Subscribes an iOS/Android/Windows Phone-based device to receive push notifications
  ///
  /// Params:
  ///
  /// `token` *(string)* Device token used to send notifications. (for mpns, the token shall be URL for sending of notifications)
  ///
  /// `device_model` *(string)* String name of device model.
  ///
  /// `device_year` *(integer)* Device year.
  ///
  /// `device_id` *(string)* Unique device ID.
  ///
  /// `system_version` *(string)* String version of device operating system.
  ///
  /// `settings` *(string)* Push settings in a [special format](https://vk.com/dev/push_settings).
  ///
  /// `sandbox` *(boolean)*
  Future<Map> registerDevice([Map<String, String> params]) async {
    return this._api.request('account.registerDevice', {
      ...?params,
    });
  }

  /// Edits current profile info.
  ///
  /// Params:
  ///
  /// `first_name` *(string)* User first name.
  ///
  /// `last_name` *(string)* User last name.
  ///
  /// `maiden_name` *(string)* User maiden name (female only)
  ///
  /// `screen_name` *(string)* User screen name.
  ///
  /// `cancel_request_id` *(integer)* ID of the name change request to be canceled. If this parameter is sent, all the others are ignored.
  ///
  /// `sex` *(integer)* User sex. Possible values: , * '1' – female,, * '2' – male.
  ///
  /// `relation` *(integer)* User relationship status. Possible values: , * '1' – single,, * '2' – in a relationship,, * '3' – engaged,, * '4' – married,, * '5' – it's complicated,, * '6' – actively searching,, * '7' – in love,, * '0' – not specified.
  ///
  /// `relation_partner_id` *(integer)* ID of the relationship partner.
  ///
  /// `bdate` *(string)* User birth date, format: DD.MM.YYYY.
  ///
  /// `bdate_visibility` *(integer)* Birth date visibility. Returned values: , * '1' – show birth date,, * '2' – show only month and day,, * '0' – hide birth date.
  ///
  /// `home_town` *(string)* User home town.
  ///
  /// `country_id` *(integer)* User country.
  ///
  /// `city_id` *(integer)* User city.
  ///
  /// `status` *(string)* Status text.
  Future<Map> saveProfileInfo([Map<String, String> params]) async {
    return this._api.request('account.saveProfileInfo', {
      ...?params,
    });
  }

  /// Allows to edit the current account info.
  ///
  /// Params:
  ///
  /// `name` *(string)* Setting name.
  ///
  /// `value` *(string)* Setting value.
  Future<Map> setInfo([Map<String, String> params]) async {
    return this._api.request('account.setInfo', {
      ...?params,
    });
  }

  /// Sets an application screen name (up to 17 characters), that is shown to the user in the left menu.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* User ID.
  ///
  /// `name` *(string)* Application screen name.
  Future<Map> setNameInMenu([Map<String, String> params]) async {
    return this._api.request('account.setNameInMenu', {
      ...?params,
    });
  }

  /// Marks a current user as offline.
  ///
  /// Params: none
  Future<Map> setOffline([Map<String, String> params]) async {
    return this._api.request('account.setOffline', {
      ...?params,
    });
  }

  /// Marks the current user as online for 15 minutes.
  ///
  /// Params:
  ///
  /// `voip` *(boolean)* '1' if videocalls are available for current device.
  Future<Map> setOnline([Map<String, String> params]) async {
    return this._api.request('account.setOnline', {
      ...?params,
    });
  }

  /// Change push settings.
  ///
  /// Params:
  ///
  /// `device_id` *(string)* Unique device ID.
  ///
  /// `settings` *(string)* Push settings in a [special format](https://vk.com/dev/push_settings).
  ///
  /// `key` *(string)* Notification key.
  ///
  /// `value` *(array)* New value for the key in a [special format](https://vk.com/dev/push_settings).
  Future<Map> setPushSettings([Map<String, String> params]) async {
    return this._api.request('account.setPushSettings', {
      ...?params,
    });
  }

  /// Mutes push notifications for the set period of time.
  ///
  /// Params:
  ///
  /// `device_id` *(string)* Unique device ID.
  ///
  /// `time` *(integer)* Time in seconds for what notifications should be disabled. '-1' to disable forever.
  ///
  /// `peer_id` *(integer)* Destination ID. "For user: 'User ID', e.g. '12345'. For chat: '2000000000' + 'Chat ID', e.g. '2000000001'. For community: '- Community ID', e.g. '-12345'. "
  ///
  /// `sound` *(integer)* '1' — to enable sound in this dialog, '0' — to disable sound. Only if 'peer_id' contains user or community ID.
  Future<Map> setSilenceMode([Map<String, String> params]) async {
    return this._api.request('account.setSilenceMode', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `owner_id` *(integer)*
  Future<Map> unban([Map<String, String> params]) async {
    return this._api.request('account.unban', {
      ...?params,
    });
  }

  /// Unsubscribes a device from push notifications.
  ///
  /// Params:
  ///
  /// `device_id` *(string)* Unique device ID.
  ///
  /// `sandbox` *(boolean)*
  Future<Map> unregisterDevice([Map<String, String> params]) async {
    return this._api.request('account.unregisterDevice', {
      ...?params,
    });
  }
}
