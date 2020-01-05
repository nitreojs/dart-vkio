import 'api.dart';

/// Orders class
class Orders {
  /// API class
  API _api;

  /// Orders
  Orders(API api) {
    _api = api;
  }

  @override
  String toString() {
    return 'Orders';
  }

  /// Params:
  ///
  /// `user_id` *(integer)*
  ///
  /// `subscription_id` *(integer)*
  ///
  /// `pending_cancel` *(boolean)*
  Future<Map> cancelSubscription([Map<String, dynamic> params]) async {
    return _api.request('orders.cancelSubscription', {
      ...?params,
    });
  }

  /// Changes order status.
  ///
  /// Params:
  ///
  /// `order_id` *(integer)* order ID.
  ///
  /// `action` *(string)* action to be done with the order. Available actions: *cancel — to cancel unconfirmed order. *charge — to confirm unconfirmed order. Applies only if processing of [order_change_state](https://vk.com/dev/payments_status) notification failed. *refund — to cancel confirmed order.
  ///
  /// `app_order_id` *(integer)* internal ID of the order in the application.
  ///
  /// `test_mode` *(boolean)* if this parameter is set to 1, this method returns a list of test mode orders. By default — 0.
  Future<Map> changeState([Map<String, dynamic> params]) async {
    return _api.request('orders.changeState', {
      ...?params,
    });
  }

  /// Returns a list of orders.
  ///
  /// Params:
  ///
  /// `offset` *(integer)*
  ///
  /// `count` *(integer)* number of returned orders., default: 100, max: 1000
  ///
  /// `test_mode` *(boolean)* if this parameter is set to 1, this method returns a list of test mode orders. By default — 0.
  Future<Map> get([Map<String, dynamic> params]) async {
    return _api.request('orders.get', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `user_id` *(integer)*
  ///
  /// `votes` *(array)*
  Future<Map> getAmount([Map<String, dynamic> params]) async {
    return _api.request('orders.getAmount', {
      ...?params,
    });
  }

  /// Returns information about orders by their IDs.
  ///
  /// Params:
  ///
  /// `order_id` *(integer)* order ID.
  ///
  /// `order_ids` *(array)* order IDs (when information about several orders is requested).
  ///
  /// `test_mode` *(boolean)* if this parameter is set to 1, this method returns a list of test mode orders. By default — 0.
  Future<Map> getById([Map<String, dynamic> params]) async {
    return _api.request('orders.getById', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `user_id` *(integer)*
  ///
  /// `subscription_id` *(integer)*
  Future<Map> getUserSubscriptionById([Map<String, dynamic> params]) async {
    return _api.request('orders.getUserSubscriptionById', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `user_id` *(integer)*
  Future<Map> getUserSubscriptions([Map<String, dynamic> params]) async {
    return _api.request('orders.getUserSubscriptions', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `user_id` *(integer)*
  ///
  /// `subscription_id` *(integer)*
  ///
  /// `price` *(integer)*
  Future<Map> updateSubscription([Map<String, dynamic> params]) async {
    return _api.request('orders.updateSubscription', {
      ...?params,
    });
  }
}
