import './api.dart';

/// PrettyCards class
class PrettyCards {
  /// API class
  API _api;

  /// PrettyCards
  PrettyCards(API api) {
    this._api = api;
  }

  toString() {
    return 'PrettyCards';
  }

  /// Params:
  ///
  /// `owner_id` *(integer)*
  ///
  /// `photo` *(string)*
  ///
  /// `title` *(string)*
  ///
  /// `link` *(string)*
  ///
  /// `price` *(string)*
  ///
  /// `price_old` *(string)*
  ///
  /// `button` *(string)*
  Future<Map> create([Map<String, String> params]) async {
    return this._api.request('prettycards.create', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `owner_id` *(integer)*
  ///
  /// `card_id` *(integer)*
  Future<Map> delete([Map<String, String> params]) async {
    return this._api.request('prettycards.delete', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `owner_id` *(integer)*
  ///
  /// `card_id` *(integer)*
  ///
  /// `photo` *(string)*
  ///
  /// `title` *(string)*
  ///
  /// `link` *(string)*
  ///
  /// `price` *(string)*
  ///
  /// `price_old` *(string)*
  ///
  /// `button` *(string)*
  Future<Map> edit([Map<String, String> params]) async {
    return this._api.request('prettycards.edit', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `owner_id` *(integer)*
  ///
  /// `offset` *(integer)*
  ///
  /// `count` *(integer)*, default: 10, max: 100
  Future<Map> get([Map<String, String> params]) async {
    return this._api.request('prettycards.get', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `owner_id` *(integer)*
  ///
  /// `card_ids` *(array)*
  Future<Map> getById([Map<String, String> params]) async {
    return this._api.request('prettycards.getById', {
      ...?params,
    });
  }

  /// Params: none
  Future<Map> getUploadURL([Map<String, String> params]) async {
    return this._api.request('prettycards.getUploadURL', {
      ...?params,
    });
  }
}
