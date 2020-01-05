import './api.dart';

/// Leads class
class Leads {
  /// API class
  API _api;

  /// Leads
  Leads(API api) {
    _api = api;
  }

  @override
  String toString() {
    return 'Leads';
  }

  /// Checks if the user can start the lead.
  ///
  /// Params:
  ///
  /// `lead_id` *(integer)* Lead ID.
  ///
  /// `test_result` *(integer)* Value to be return in 'result' field when test mode is used.
  ///
  /// `test_mode` *(boolean)*
  ///
  /// `auto_start` *(boolean)*
  ///
  /// `age` *(integer)* User age.
  ///
  /// `country` *(string)* User country code.
  Future<Map> checkUser([Map<String, dynamic> params]) async {
    return _api.request('leads.checkUser', {
      ...?params,
    });
  }

  /// Completes the lead started by user.
  ///
  /// Params:
  ///
  /// `vk_sid` *(string)* Session obtained as GET parameter when session started.
  ///
  /// `secret` *(string)* Secret key from the lead testing interface.
  ///
  /// `comment` *(string)* Comment text.
  Future<Map> complete([Map<String, dynamic> params]) async {
    return _api.request('leads.complete', {
      ...?params,
    });
  }

  /// Returns lead stats data.
  ///
  /// Params:
  ///
  /// `lead_id` *(integer)* Lead ID.
  ///
  /// `secret` *(string)* Secret key obtained from the lead testing interface.
  ///
  /// `date_start` *(string)* Day to start stats from (YYYY_MM_DD, e.g.2011-09-17).
  ///
  /// `date_end` *(string)* Day to finish stats (YYYY_MM_DD, e.g.2011-09-17).
  Future<Map> getStats([Map<String, dynamic> params]) async {
    return _api.request('leads.getStats', {
      ...?params,
    });
  }

  /// Returns a list of last user actions for the offer.
  ///
  /// Params:
  ///
  /// `offer_id` *(integer)* Offer ID.
  ///
  /// `secret` *(string)* Secret key obtained in the lead testing interface.
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of results.
  ///
  /// `count` *(integer)* Number of results to return., default: 100, max: 1000
  ///
  /// `status` *(integer)* Action type. Possible values: *'0' — start,, *'1' — finish,, *'2' — blocking users,, *'3' — start in a test mode,, *'4' — finish in a test mode.
  ///
  /// `reverse` *(boolean)* Sort order. Possible values: *'1' — chronological,, *'0' — reverse chronological.
  Future<Map> getUsers([Map<String, dynamic> params]) async {
    return _api.request('leads.getUsers', {
      ...?params,
    });
  }

  /// Counts the metric event.
  ///
  /// Params:
  ///
  /// `data` *(string)* Metric data obtained in the lead interface.
  Future<Map> metricHit([Map<String, dynamic> params]) async {
    return _api.request('leads.metricHit', {
      ...?params,
    });
  }

  /// Creates new session for the user passing the offer.
  ///
  /// Params:
  ///
  /// `lead_id` *(integer)* Lead ID.
  ///
  /// `secret` *(string)* Secret key from the lead testing interface.
  ///
  /// `uid` *(integer)*
  ///
  /// `aid` *(integer)*
  ///
  /// `test_mode` *(boolean)*
  ///
  /// `force` *(boolean)*
  Future<Map> start([Map<String, dynamic> params]) async {
    return _api.request('leads.start', {
      ...?params,
    });
  }
}
