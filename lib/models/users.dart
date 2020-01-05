import './api.dart';

/// Users class
class Users {
  /// API class
  API _api;

  /// Users
  Users(API api) {
    _api = api;
  }

  String toString() {
    return 'Users';
  }

  /// Returns detailed information on users.
  ///
  /// Params:
  ///
  /// `user_ids` *(array)* User IDs or screen names ('screen_name'). By default, current user ID.
  ///
  /// `fields` *(array)* Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'contacts', 'education', 'online', 'counters', 'relation', 'last_seen', 'activity', 'can_write_private_message', 'can_see_all_posts', 'can_post', 'universities',
  ///
  /// `name_case` *(string)* Case for declension of user name and surname: 'nom' — nominative (default), 'gen' — genitive , 'dat' — dative, 'acc' — accusative , 'ins' — instrumental , 'abl' — prepositional
  Future<Map> get([Map<String, String> params]) async {
    return _api.request('users.get', {
      ...?params,
    });
  }

  /// Returns a list of IDs of followers of the user in question, sorted by date added, most recent first.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* User ID.
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of followers.
  ///
  /// `count` *(integer)* Number of followers to return., default: 100, max: 1000
  ///
  /// `fields` *(array)* Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'rate', 'contacts', 'education', 'online'.
  ///
  /// `name_case` *(string)* Case for declension of user name and surname: 'nom' — nominative (default), 'gen' — genitive , 'dat' — dative, 'acc' — accusative , 'ins' — instrumental , 'abl' — prepositional
  Future<Map> getFollowers([Map<String, String> params]) async {
    return _api.request('users.getFollowers', {
      ...?params,
    });
  }

  /// Returns a list of IDs of users and communities followed by the user.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* User ID.
  ///
  /// `extended` *(boolean)* '1' — to return a combined list of users and communities, '0' — to return separate lists of users and communities (default)
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of subscriptions.
  ///
  /// `count` *(integer)* Number of users and communities to return., default: 20, max: 200
  ///
  /// `fields` *(array)*
  Future<Map> getSubscriptions([Map<String, String> params]) async {
    return _api.request('users.getSubscriptions', {
      ...?params,
    });
  }

  /// Returns information whether a user installed the application.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)*
  Future<Map> isAppUser([Map<String, String> params]) async {
    return _api.request('users.isAppUser', {
      ...?params,
    });
  }

  /// Reports (submits a complain about) a user.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* ID of the user about whom a complaint is being made.
  ///
  /// `type` *(string)* Type of complaint: 'porn' – pornography, 'spam' – spamming, 'insult' – abusive behavior, 'advertisment' – disruptive advertisements
  ///
  /// `comment` *(string)* Comment describing the complaint.
  Future<Map> report([Map<String, String> params]) async {
    return _api.request('users.report', {
      ...?params,
    });
  }

  /// Returns a list of users matching the search criteria.
  ///
  /// Params:
  ///
  /// `q` *(string)* Search query string (e.g., 'Vasya Babich').
  ///
  /// `sort` *(integer)* Sort order: '1' — by date registered, '0' — by rating
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of users.
  ///
  /// `count` *(integer)* Number of users to return., default: 20, max: 1000
  ///
  /// `fields` *(array)* Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'rate', 'contacts', 'education', 'online',
  ///
  /// `city` *(integer)* City ID.
  ///
  /// `country` *(integer)* Country ID.
  ///
  /// `hometown` *(string)* City name in a string.
  ///
  /// `university_country` *(integer)* ID of the country where the user graduated.
  ///
  /// `university` *(integer)* ID of the institution of higher education.
  ///
  /// `university_year` *(integer)* Year of graduation from an institution of higher education.
  ///
  /// `university_faculty` *(integer)* Faculty ID.
  ///
  /// `university_chair` *(integer)* Chair ID.
  ///
  /// `sex` *(integer)* '1' — female, '2' — male, '0' — any (default)
  ///
  /// `status` *(integer)* Relationship status: '1' — Not married, '2' — In a relationship, '3' — Engaged, '4' — Married, '5' — It's complicated, '6' — Actively searching, '7' — In love
  ///
  /// `age_from` *(integer)* Minimum age.
  ///
  /// `age_to` *(integer)* Maximum age.
  ///
  /// `birth_day` *(integer)* Day of birth.
  ///
  /// `birth_month` *(integer)* Month of birth.
  ///
  /// `birth_year` *(integer)* Year of birth., min: 1900, max: 2100
  ///
  /// `online` *(boolean)* '1' — online only, '0' — all users
  ///
  /// `has_photo` *(boolean)* '1' — with photo only, '0' — all users
  ///
  /// `school_country` *(integer)* ID of the country where users finished school.
  ///
  /// `school_city` *(integer)* ID of the city where users finished school.
  ///
  /// `school_class` *(integer)*
  ///
  /// `school` *(integer)* ID of the school.
  ///
  /// `school_year` *(integer)* School graduation year.
  ///
  /// `religion` *(string)* Users' religious affiliation.
  ///
  /// `interests` *(string)* Users' interests.
  ///
  /// `company` *(string)* Name of the company where users work.
  ///
  /// `position` *(string)* Job position.
  ///
  /// `group_id` *(integer)* ID of a community to search in communities.
  ///
  /// `from_list` *(array)*
  Future<Map> search([Map<String, String> params]) async {
    return _api.request('users.search', {
      ...?params,
    });
  }
}
