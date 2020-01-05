import './api.dart';

/// Friends class
class Friends {
  /// API class
  API _api;

  /// Friends
  Friends(API api) {
    _api = api;
  }

  toString() {
    return 'Friends';
  }

  /// Approves or creates a friend request.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* ID of the user whose friend request will be approved or to whom a friend request will be sent.
  ///
  /// `text` *(string)* Text of the message (up to 500 characters) for the friend request, if any.
  ///
  /// `follow` *(boolean)* '1' to pass an incoming request to followers list.
  Future<Map> add([Map<String, String> params]) async {
    return _api.request('friends.add', {
      ...?params,
    });
  }

  /// Creates a new friend list for the current user.
  ///
  /// Params:
  ///
  /// `name` *(string)* Name of the friend list.
  ///
  /// `user_ids` *(array)* IDs of users to be added to the friend list.
  Future<Map> addList([Map<String, String> params]) async {
    return _api.request('friends.addList', {
      ...?params,
    });
  }

  /// Checks the current user's friendship status with other specified users.
  ///
  /// Params:
  ///
  /// `user_ids` *(array)* IDs of the users whose friendship status to check.
  ///
  /// `need_sign` *(boolean)* '1' — to return 'sign' field. 'sign' is md5("{id}_{user_id}_{friends_status}_{application_secret}"), where id is current user ID. This field allows to check that data has not been modified by the client. By default: '0'.
  Future<Map> areFriends([Map<String, String> params]) async {
    return _api.request('friends.areFriends', {
      ...?params,
    });
  }

  /// Declines a friend request or deletes a user from the current user's friend list.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* ID of the user whose friend request is to be declined or who is to be deleted from the current user's friend list.
  Future<Map> delete([Map<String, String> params]) async {
    return _api.request('friends.delete', {
      ...?params,
    });
  }

  /// Marks all incoming friend requests as viewed.
  ///
  /// Params: none
  Future<Map> deleteAllRequests([Map<String, String> params]) async {
    return _api.request('friends.deleteAllRequests', {
      ...?params,
    });
  }

  /// Deletes a friend list of the current user.
  ///
  /// Params:
  ///
  /// `list_id` *(integer)* ID of the friend list to delete., max: 24
  Future<Map> deleteList([Map<String, String> params]) async {
    return _api.request('friends.deleteList', {
      ...?params,
    });
  }

  /// Edits the friend lists of the selected user.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* ID of the user whose friend list is to be edited.
  ///
  /// `list_ids` *(array)* IDs of the friend lists to which to add the user.
  Future<Map> edit([Map<String, String> params]) async {
    return _api.request('friends.edit', {
      ...?params,
    });
  }

  /// Edits a friend list of the current user.
  ///
  /// Params:
  ///
  /// `name` *(string)* Name of the friend list.
  ///
  /// `list_id` *(integer)* Friend list ID.
  ///
  /// `user_ids` *(array)* IDs of users in the friend list.
  ///
  /// `add_user_ids` *(array)* (Applies if 'user_ids' parameter is not set.), User IDs to add to the friend list.
  ///
  /// `delete_user_ids` *(array)* (Applies if 'user_ids' parameter is not set.), User IDs to delete from the friend list.
  Future<Map> editList([Map<String, String> params]) async {
    return _api.request('friends.editList', {
      ...?params,
    });
  }

  /// Returns a list of user IDs or detailed information about a user's friends.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* User ID. By default, the current user ID.
  ///
  /// `order` *(string)* Sort order: , 'name' — by name (enabled only if the 'fields' parameter is used), 'hints' — by rating, similar to how friends are sorted in My friends section, , This parameter is available only for [desktop applications](https://vk.com/dev/standalone).
  ///
  /// `list_id` *(integer)* ID of the friend list returned by the [desktop applications](https://vk.com/dev/friends.getLists|friends.getLists] method to be used as the source. This parameter is taken into account only when the uid parameter is set to the current user ID. This parameter is available only for [vk.com/dev/standalone).
  ///
  /// `count` *(integer)* Number of friends to return., default: 5000
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of friends.
  ///
  /// `fields` *(array)* Profile fields to return. Sample values: 'uid', 'first_name', 'last_name', 'nickname', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'domain', 'has_mobile', 'rate', 'contacts', 'education'.
  ///
  /// `name_case` *(string)* Case for declension of user name and surname: , 'nom' — nominative (default) , 'gen' — genitive , 'dat' — dative , 'acc' — accusative , 'ins' — instrumental , 'abl' — prepositional
  Future<Map> get([Map<String, String> params]) async {
    return _api.request('friends.get', {
      ...?params,
    });
  }

  /// Returns a list of IDs of the current user's friends who installed the application.
  ///
  /// Params: none
  Future<Map> getAppUsers([Map<String, String> params]) async {
    return _api.request('friends.getAppUsers', {
      ...?params,
    });
  }

  /// Returns a list of the current user's friends whose phone numbers, validated or specified in a profile, are in a given list.
  ///
  /// Params:
  ///
  /// `phones` *(array)* List of phone numbers in MSISDN format (maximum 1000). Example: "+79219876543,+79111234567"
  ///
  /// `fields` *(array)* Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'rate', 'contacts', 'education', 'online, counters'.
  Future<Map> getByPhones([Map<String, String> params]) async {
    return _api.request('friends.getByPhones', {
      ...?params,
    });
  }

  /// Returns a list of the user's friend lists.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* User ID.
  ///
  /// `return_system` *(boolean)* '1' — to return system friend lists. By default: '0'.
  Future<Map> getLists([Map<String, String> params]) async {
    return _api.request('friends.getLists', {
      ...?params,
    });
  }

  /// Returns a list of user IDs of the mutual friends of two users.
  ///
  /// Params:
  ///
  /// `source_uid` *(integer)* ID of the user whose friends will be checked against the friends of the user specified in 'target_uid'.
  ///
  /// `target_uid` *(integer)* ID of the user whose friends will be checked against the friends of the user specified in 'source_uid'.
  ///
  /// `target_uids` *(array)* IDs of the users whose friends will be checked against the friends of the user specified in 'source_uid'.
  ///
  /// `order` *(string)* Sort order: 'random' — random order
  ///
  /// `count` *(integer)* Number of mutual friends to return.
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of mutual friends.
  Future<Map> getMutual([Map<String, String> params]) async {
    return _api.request('friends.getMutual', {
      ...?params,
    });
  }

  /// Returns a list of user IDs of a user's friends who are online.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* User ID.
  ///
  /// `list_id` *(integer)* Friend list ID. If this parameter is not set, information about all online friends is returned.
  ///
  /// `online_mobile` *(boolean)* '1' — to return an additional 'online_mobile' field, '0' — (default),
  ///
  /// `order` *(string)* Sort order: 'random' — random order
  ///
  /// `count` *(integer)* Number of friends to return.
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of friends.
  Future<Map> getOnline([Map<String, String> params]) async {
    return _api.request('friends.getOnline', {
      ...?params,
    });
  }

  /// Returns a list of user IDs of the current user's recently added friends.
  ///
  /// Params:
  ///
  /// `count` *(integer)* Number of recently added friends to return., default: 100, max: 1000
  Future<Map> getRecent([Map<String, String> params]) async {
    return _api.request('friends.getRecent', {
      ...?params,
    });
  }

  /// Returns information about the current user's incoming and outgoing friend requests.
  ///
  /// Params:
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of friend requests.
  ///
  /// `count` *(integer)* Number of friend requests to return (default 100, maximum 1000).
  ///
  /// `extended` *(boolean)* '1' — to return response messages from users who have sent a friend request or, if 'suggested' is set to '1', to return a list of suggested friends
  ///
  /// `need_mutual` *(boolean)* '1' — to return a list of mutual friends (up to 20), if any
  ///
  /// `out` *(boolean)* '1' — to return outgoing requests, '0' — to return incoming requests (default)
  ///
  /// `sort` *(integer)* Sort order: '1' — by number of mutual friends, '0' — by date
  ///
  /// `need_viewed` *(boolean)*
  ///
  /// `suggested` *(boolean)* '1' — to return a list of suggested friends, '0' — to return friend requests (default)
  Future<Map> getRequests([Map<String, String> params]) async {
    return _api.request('friends.getRequests', {
      ...?params,
    });
  }

  /// Returns a list of profiles of users whom the current user may know.
  ///
  /// Params:
  ///
  /// `filter` *(array)* Types of potential friends to return: 'mutual' — users with many mutual friends , 'contacts' — users found with the [account.importContacts](https://vk.com/dev/account.importContacts|account.importContacts] method , 'mutual_contacts' — users who imported the same contacts as the current user with the [vk.com/dev/account.importContacts) method
  ///
  /// `count` *(integer)* Number of suggestions to return., default: 500, max: 500
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of suggestions.
  ///
  /// `fields` *(array)* Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'rate', 'contacts', 'education', 'online', 'counters'.
  ///
  /// `name_case` *(string)* Case for declension of user name and surname: , 'nom' — nominative (default) , 'gen' — genitive , 'dat' — dative , 'acc' — accusative , 'ins' — instrumental , 'abl' — prepositional
  Future<Map> getSuggestions([Map<String, String> params]) async {
    return _api.request('friends.getSuggestions', {
      ...?params,
    });
  }

  /// Returns a list of friends matching the search criteria.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* User ID.
  ///
  /// `q` *(string)* Search query string (e.g., 'Vasya Babich').
  ///
  /// `fields` *(array)* Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'rate', 'contacts', 'education', 'online',
  ///
  /// `name_case` *(string)* Case for declension of user name and surname: 'nom' — nominative (default), 'gen' — genitive , 'dat' — dative, 'acc' — accusative , 'ins' — instrumental , 'abl' — prepositional, default: Nom
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of friends.
  ///
  /// `count` *(integer)* Number of friends to return., default: 20, max: 1000
  Future<Map> search([Map<String, String> params]) async {
    return _api.request('friends.search', {
      ...?params,
    });
  }
}
