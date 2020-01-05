import 'api.dart';

/// Market class
class Market {
  /// API class
  API _api;

  /// Market
  Market(API api) {
    _api = api;
  }

  @override
  String toString() {
    return 'Market';
  }

  /// Ads a new item to the market.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of an item owner community.
  ///
  /// `name` *(string)* Item name.
  ///
  /// `description` *(string)* Item description.
  ///
  /// `category_id` *(integer)* Item category ID.
  ///
  /// `price` *(number)* Item price., min: 0.01
  ///
  /// `deleted` *(boolean)* Item status ('1' — deleted, '0' — not deleted).
  ///
  /// `main_photo_id` *(integer)* Cover photo ID.
  ///
  /// `photo_ids` *(array)* IDs of additional photos.
  ///
  /// `url` *(string)* Url for button in market item.
  Future<Map> add([Map<String, dynamic> params]) async {
    return _api.request('market.add', {
      ...?params,
    });
  }

  /// Creates new collection of items
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of an item owner community.
  ///
  /// `title` *(string)* Collection title.
  ///
  /// `photo_id` *(integer)* Cover photo ID.
  ///
  /// `main_album` *(boolean)* Set as main ('1' – set, '0' – no).
  Future<Map> addAlbum([Map<String, dynamic> params]) async {
    return _api.request('market.addAlbum', {
      ...?params,
    });
  }

  /// Adds an item to one or multiple collections.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of an item owner community.
  ///
  /// `item_id` *(integer)* Item ID.
  ///
  /// `album_ids` *(array)* Collections IDs to add item to.
  Future<Map> addToAlbum([Map<String, dynamic> params]) async {
    return _api.request('market.addToAlbum', {
      ...?params,
    });
  }

  /// Creates a new comment for an item.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of an item owner community.
  ///
  /// `item_id` *(integer)* Item ID.
  ///
  /// `message` *(string)* Comment text (required if 'attachments' parameter is not specified)
  ///
  /// `attachments` *(array)* Comma-separated list of objects attached to a comment. The field is submitted the following way: , "'<owner_id>_<media_id>,<owner_id>_<media_id>'", , '' - media attachment type: "'photo' - photo, 'video' - video, 'audio' - audio, 'doc' - document", , '<owner_id>' - media owner id, '<media_id>' - media attachment id, , For example: "photo100172_166443618,photo66748_265827614",
  ///
  /// `from_group` *(boolean)* '1' - comment will be published on behalf of a community, '0' - on behalf of a user (by default).
  ///
  /// `reply_to_comment` *(integer)* ID of a comment to reply with current comment to.
  ///
  /// `sticker_id` *(integer)* Sticker ID.
  ///
  /// `guid` *(string)* Random value to avoid resending one comment.
  Future<Map> createComment([Map<String, dynamic> params]) async {
    return _api.request('market.createComment', {
      ...?params,
    });
  }

  /// Deletes an item.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of an item owner community.
  ///
  /// `item_id` *(integer)* Item ID.
  Future<Map> delete([Map<String, dynamic> params]) async {
    return _api.request('market.delete', {
      ...?params,
    });
  }

  /// Deletes a collection of items.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of an collection owner community.
  ///
  /// `album_id` *(integer)* Collection ID.
  Future<Map> deleteAlbum([Map<String, dynamic> params]) async {
    return _api.request('market.deleteAlbum', {
      ...?params,
    });
  }

  /// Deletes an item's comment
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* identifier of an item owner community, "Note that community id in the 'owner_id' parameter should be negative number. For example 'owner_id'=-1 matches the [VK API](https://vk.com/apiclub) community "
  ///
  /// `comment_id` *(integer)* comment id
  Future<Map> deleteComment([Map<String, dynamic> params]) async {
    return _api.request('market.deleteComment', {
      ...?params,
    });
  }

  /// Edits an item.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of an item owner community.
  ///
  /// `item_id` *(integer)* Item ID.
  ///
  /// `name` *(string)* Item name.
  ///
  /// `description` *(string)* Item description.
  ///
  /// `category_id` *(integer)* Item category ID.
  ///
  /// `price` *(number)* Item price., min: 0.01
  ///
  /// `deleted` *(boolean)* Item status ('1' — deleted, '0' — not deleted).
  ///
  /// `main_photo_id` *(integer)* Cover photo ID.
  ///
  /// `photo_ids` *(array)* IDs of additional photos.
  ///
  /// `url` *(string)* Url for button in market item.
  Future<Map> edit([Map<String, dynamic> params]) async {
    return _api.request('market.edit', {
      ...?params,
    });
  }

  /// Edits a collection of items
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of an collection owner community.
  ///
  /// `album_id` *(integer)* Collection ID.
  ///
  /// `title` *(string)* Collection title.
  ///
  /// `photo_id` *(integer)* Cover photo id
  ///
  /// `main_album` *(boolean)* Set as main ('1' – set, '0' – no).
  Future<Map> editAlbum([Map<String, dynamic> params]) async {
    return _api.request('market.editAlbum', {
      ...?params,
    });
  }

  /// Chages item comment's text
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of an item owner community.
  ///
  /// `comment_id` *(integer)* Comment ID.
  ///
  /// `message` *(string)* New comment text (required if 'attachments' are not specified), , 2048 symbols maximum.
  ///
  /// `attachments` *(array)* Comma-separated list of objects attached to a comment. The field is submitted the following way: , "'<owner_id>_<media_id>,<owner_id>_<media_id>'", , '' - media attachment type: "'photo' - photo, 'video' - video, 'audio' - audio, 'doc' - document", , '<owner_id>' - media owner id, '<media_id>' - media attachment id, , For example: "photo100172_166443618,photo66748_265827614",
  Future<Map> editComment([Map<String, dynamic> params]) async {
    return _api.request('market.editComment', {
      ...?params,
    });
  }

  /// Returns items list for a community.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of an item owner community, "Note that community id in the 'owner_id' parameter should be negative number. For example 'owner_id'=-1 matches the [VK API](https://vk.com/apiclub) community "
  ///
  /// `album_id` *(integer)*
  ///
  /// `count` *(integer)* Number of items to return., default: 100, max: 200
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of results.
  ///
  /// `extended` *(boolean)* '1' – method will return additional fields: 'likes, can_comment, car_repost, photos'. These parameters are not returned by default.
  Future<Map> get([Map<String, dynamic> params]) async {
    return _api.request('market.get', {
      ...?params,
    });
  }

  /// Returns items album's data
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* identifier of an album owner community, "Note that community id in the 'owner_id' parameter should be negative number. For example 'owner_id'=-1 matches the [VK API](https://vk.com/apiclub) community "
  ///
  /// `album_ids` *(array)* collections identifiers to obtain data from
  Future<Map> getAlbumById([Map<String, dynamic> params]) async {
    return _api.request('market.getAlbumById', {
      ...?params,
    });
  }

  /// Returns community's collections list.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of an items owner community.
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of results.
  ///
  /// `count` *(integer)* Number of items to return., default: 50, max: 100
  Future<Map> getAlbums([Map<String, dynamic> params]) async {
    return _api.request('market.getAlbums', {
      ...?params,
    });
  }

  /// Returns information about market items by their ids.
  ///
  /// Params:
  ///
  /// `item_ids` *(array)* Comma-separated ids list: {user id}_{item id}. If an item belongs to a community -{community id} is used. " 'Videos' value example: , '-4363_136089719,13245770_137352259'"
  ///
  /// `extended` *(boolean)* '1' – to return additional fields: 'likes, can_comment, car_repost, photos'. By default: '0'.
  Future<Map> getById([Map<String, dynamic> params]) async {
    return _api.request('market.getById', {
      ...?params,
    });
  }

  /// Returns a list of market categories.
  ///
  /// Params:
  ///
  /// `count` *(integer)* Number of results to return., default: 10, max: 1000
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of results.
  Future<Map> getCategories([Map<String, dynamic> params]) async {
    return _api.request('market.getCategories', {
      ...?params,
    });
  }

  /// Returns comments list for an item.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of an item owner community
  ///
  /// `item_id` *(integer)* Item ID.
  ///
  /// `need_likes` *(boolean)* '1' — to return likes info.
  ///
  /// `start_comment_id` *(integer)* ID of a comment to start a list from (details below).
  ///
  /// `offset` *(integer)*
  ///
  /// `count` *(integer)* Number of results to return., default: 20, max: 100
  ///
  /// `sort` *(string)* Sort order ('asc' — from old to new, 'desc' — from new to old), default: asc
  ///
  /// `extended` *(boolean)* '1' — comments will be returned as numbered objects, in addition lists of 'profiles' and 'groups' objects will be returned.
  ///
  /// `fields` *(array)* List of additional profile fields to return. See the [details](https://vk.com/dev/fields)
  Future<Map> getComments([Map<String, dynamic> params]) async {
    return _api.request('market.getComments', {
      ...?params,
    });
  }

  /// Removes an item from one or multiple collections.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of an item owner community.
  ///
  /// `item_id` *(integer)* Item ID.
  ///
  /// `album_ids` *(array)* Collections IDs to remove item from.
  Future<Map> removeFromAlbum([Map<String, dynamic> params]) async {
    return _api.request('market.removeFromAlbum', {
      ...?params,
    });
  }

  /// Reorders the collections list.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of an item owner community.
  ///
  /// `album_id` *(integer)* Collection ID.
  ///
  /// `before` *(integer)* ID of a collection to place current collection before it.
  ///
  /// `after` *(integer)* ID of a collection to place current collection after it.
  Future<Map> reorderAlbums([Map<String, dynamic> params]) async {
    return _api.request('market.reorderAlbums', {
      ...?params,
    });
  }

  /// Changes item place in a collection.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of an item owner community.
  ///
  /// `album_id` *(integer)* ID of a collection to reorder items in. Set 0 to reorder full items list.
  ///
  /// `item_id` *(integer)* Item ID.
  ///
  /// `before` *(integer)* ID of an item to place current item before it.
  ///
  /// `after` *(integer)* ID of an item to place current item after it.
  Future<Map> reorderItems([Map<String, dynamic> params]) async {
    return _api.request('market.reorderItems', {
      ...?params,
    });
  }

  /// Sends a complaint to the item.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of an item owner community.
  ///
  /// `item_id` *(integer)* Item ID.
  ///
  /// `reason` *(integer)* Complaint reason. Possible values: *'0' — spam,, *'1' — child porn,, *'2' — extremism,, *'3' — violence,, *'4' — drugs propaganda,, *'5' — adult materials,, *'6' — insult.
  Future<Map> report([Map<String, dynamic> params]) async {
    return _api.request('market.report', {
      ...?params,
    });
  }

  /// Sends a complaint to the item's comment.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of an item owner community.
  ///
  /// `comment_id` *(integer)* Comment ID.
  ///
  /// `reason` *(integer)* Complaint reason. Possible values: *'0' — spam,, *'1' — child porn,, *'2' — extremism,, *'3' — violence,, *'4' — drugs propaganda,, *'5' — adult materials,, *'6' — insult.
  Future<Map> reportComment([Map<String, dynamic> params]) async {
    return _api.request('market.reportComment', {
      ...?params,
    });
  }

  /// Restores recently deleted item
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of an item owner community.
  ///
  /// `item_id` *(integer)* Deleted item ID.
  Future<Map> restore([Map<String, dynamic> params]) async {
    return _api.request('market.restore', {
      ...?params,
    });
  }

  /// Restores a recently deleted comment
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* identifier of an item owner community, "Note that community id in the 'owner_id' parameter should be negative number. For example 'owner_id'=-1 matches the [VK API](https://vk.com/apiclub) community "
  ///
  /// `comment_id` *(integer)* deleted comment id
  Future<Map> restoreComment([Map<String, dynamic> params]) async {
    return _api.request('market.restoreComment', {
      ...?params,
    });
  }

  /// Searches market items in a community's catalog
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of an items owner community.
  ///
  /// `album_id` *(integer)*
  ///
  /// `q` *(string)* Search query, for example "pink slippers".
  ///
  /// `price_from` *(integer)* Minimum item price value.
  ///
  /// `price_to` *(integer)* Maximum item price value.
  ///
  /// `tags` *(array)* Comma-separated tag IDs list.
  ///
  /// `sort` *(integer)*
  ///
  /// `rev` *(integer)* '0' — do not use reverse order, '1' — use reverse order, default: 1
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of results.
  ///
  /// `count` *(integer)* Number of items to return., default: 20, max: 200
  ///
  /// `extended` *(boolean)* '1' – to return additional fields: 'likes, can_comment, car_repost, photos'. By default: '0'., default: 0
  ///
  /// `status` *(integer)*
  Future<Map> search([Map<String, dynamic> params]) async {
    return _api.request('market.search', {
      ...?params,
    });
  }
}
