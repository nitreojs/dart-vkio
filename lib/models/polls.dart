import './api.dart';

/// Polls class
class Polls {
  /// API class
  API _api;

  /// Polls
  Polls(API api) {
    _api = api;
  }

  String toString() {
    return 'Polls';
  }

  /// Adds the current user's vote to the selected answer in the poll.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the poll. Use a negative value to designate a community ID.
  ///
  /// `poll_id` *(integer)* Poll ID.
  ///
  /// `answer_ids` *(array)*
  ///
  /// `is_board` *(boolean)*
  Future<Map> addVote([Map<String, String> params]) async {
    return _api.request('polls.addVote', {
      ...?params,
    });
  }

  /// Creates polls that can be attached to the users' or communities' posts.
  ///
  /// Params:
  ///
  /// `question` *(string)* question text
  ///
  /// `is_anonymous` *(boolean)* '1' – anonymous poll, participants list is hidden,, '0' – public poll, participants list is available,, Default value is '0'.
  ///
  /// `is_multiple` *(boolean)*
  ///
  /// `end_date` *(integer)*, min: 1550700000
  ///
  /// `owner_id` *(integer)* If a poll will be added to a communty it is required to send a negative group identifier. Current user by default.
  ///
  /// `add_answers` *(string)* available answers list, for example: " ["yes","no","maybe"]", There can be from 1 to 10 answers.
  ///
  /// `photo_id` *(integer)*
  ///
  /// `background_id` *(string)*
  Future<Map> create([Map<String, String> params]) async {
    return _api.request('polls.create', {
      ...?params,
    });
  }

  /// Deletes the current user's vote from the selected answer in the poll.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the poll. Use a negative value to designate a community ID.
  ///
  /// `poll_id` *(integer)* Poll ID.
  ///
  /// `answer_id` *(integer)* Answer ID.
  ///
  /// `is_board` *(boolean)*
  Future<Map> deleteVote([Map<String, String> params]) async {
    return _api.request('polls.deleteVote', {
      ...?params,
    });
  }

  /// Edits created polls
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* poll owner id
  ///
  /// `poll_id` *(integer)* edited poll's id
  ///
  /// `question` *(string)* new question text
  ///
  /// `add_answers` *(string)* answers list, for example: , "["yes","no","maybe"]"
  ///
  /// `edit_answers` *(string)* object containing answers that need to be edited,, key – answer id, value – new answer text. Example: {"382967099":"option1", "382967103":"option2"}"
  ///
  /// `delete_answers` *(string)* list of answer ids to be deleted. For example: "[382967099, 382967103]"
  ///
  /// `end_date` *(integer)*
  ///
  /// `photo_id` *(integer)*
  ///
  /// `background_id` *(string)*
  Future<Map> edit([Map<String, String> params]) async {
    return _api.request('polls.edit', {
      ...?params,
    });
  }

  /// Returns detailed information about a poll by its ID.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the poll. Use a negative value to designate a community ID.
  ///
  /// `is_board` *(boolean)* '1' – poll is in a board, '0' – poll is on a wall. '0' by default.
  ///
  /// `poll_id` *(integer)* Poll ID.
  ///
  /// `extended` *(boolean)*
  ///
  /// `friends_count` *(integer)*, default: 3, max: 100
  ///
  /// `fields` *(array)*
  ///
  /// `name_case` *(string)*, default: nom
  Future<Map> getById([Map<String, String> params]) async {
    return _api.request('polls.getById', {
      ...?params,
    });
  }

  /// Returns a list of IDs of users who selected specific answers in the poll.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the poll. Use a negative value to designate a community ID.
  ///
  /// `poll_id` *(integer)* Poll ID.
  ///
  /// `answer_ids` *(array)* Answer IDs.
  ///
  /// `is_board` *(boolean)*
  ///
  /// `friends_only` *(boolean)* '1' — to return only current user's friends, '0' — to return all users (default),
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of voters. '0' — (default)
  ///
  /// `count` *(integer)* Number of user IDs to return (if the 'friends_only' parameter is not set, maximum '1000', otherwise '10'). '100' — (default)
  ///
  /// `fields` *(array)* Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate (birthdate)', 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'rate', 'contacts', 'education', 'online', 'counters'.
  ///
  /// `name_case` *(string)* Case for declension of user name and surname: , 'nom' — nominative (default) , 'gen' — genitive , 'dat' — dative , 'acc' — accusative , 'ins' — instrumental , 'abl' — prepositional
  Future<Map> getVoters([Map<String, String> params]) async {
    return _api.request('polls.getVoters', {
      ...?params,
    });
  }
}
