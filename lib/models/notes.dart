import 'api.dart';

/// Notes class
class Notes {
  /// API class
  API _api;

  /// Notes
  Notes(API api) {
    _api = api;
  }

  @override
  String toString() {
    return 'Notes';
  }

  /// Creates a new note for the current user.
  ///
  /// Params:
  ///
  /// `title` *(string)* Note title.
  ///
  /// `text` *(string)* Note text.
  ///
  /// `privacy_view` *(array)*, default: all
  ///
  /// `privacy_comment` *(array)*, default: all
  Future<dynamic> add([Map<String, dynamic> params]) async {
    return _api.request('notes.add', {
      ...?params,
    });
  }

  /// Adds a new comment on a note.
  ///
  /// Params:
  ///
  /// `note_id` *(integer)* Note ID.
  ///
  /// `owner_id` *(integer)* Note owner ID.
  ///
  /// `reply_to` *(integer)* ID of the user to whom the reply is addressed (if the comment is a reply to another comment).
  ///
  /// `message` *(string)* Comment text.
  ///
  /// `guid` *(string)*
  Future<dynamic> createComment([Map<String, dynamic> params]) async {
    return _api.request('notes.createComment', {
      ...?params,
    });
  }

  /// Deletes a note of the current user.
  ///
  /// Params:
  ///
  /// `note_id` *(integer)* Note ID.
  Future<dynamic> delete([Map<String, dynamic> params]) async {
    return _api.request('notes.delete', {
      ...?params,
    });
  }

  /// Deletes a comment on a note.
  ///
  /// Params:
  ///
  /// `comment_id` *(integer)* Comment ID.
  ///
  /// `owner_id` *(integer)* Note owner ID.
  Future<dynamic> deleteComment([Map<String, dynamic> params]) async {
    return _api.request('notes.deleteComment', {
      ...?params,
    });
  }

  /// Edits a note of the current user.
  ///
  /// Params:
  ///
  /// `note_id` *(integer)* Note ID.
  ///
  /// `title` *(string)* Note title.
  ///
  /// `text` *(string)* Note text.
  ///
  /// `privacy_view` *(array)*, default: all
  ///
  /// `privacy_comment` *(array)*, default: all
  Future<dynamic> edit([Map<String, dynamic> params]) async {
    return _api.request('notes.edit', {
      ...?params,
    });
  }

  /// Edits a comment on a note.
  ///
  /// Params:
  ///
  /// `comment_id` *(integer)* Comment ID.
  ///
  /// `owner_id` *(integer)* Note owner ID.
  ///
  /// `message` *(string)* New comment text.
  Future<dynamic> editComment([Map<String, dynamic> params]) async {
    return _api.request('notes.editComment', {
      ...?params,
    });
  }

  /// Returns a list of notes created by a user.
  ///
  /// Params:
  ///
  /// `note_ids` *(array)* Note IDs.
  ///
  /// `user_id` *(integer)* Note owner ID.
  ///
  /// `offset` *(integer)*
  ///
  /// `count` *(integer)* Number of notes to return., default: 20, max: 100
  ///
  /// `sort` *(integer)*
  Future<dynamic> get([Map<String, dynamic> params]) async {
    return _api.request('notes.get', {
      ...?params,
    });
  }

  /// Returns a note by its ID.
  ///
  /// Params:
  ///
  /// `note_id` *(integer)* Note ID.
  ///
  /// `owner_id` *(integer)* Note owner ID.
  ///
  /// `need_wiki` *(boolean)*
  Future<dynamic> getById([Map<String, dynamic> params]) async {
    return _api.request('notes.getById', {
      ...?params,
    });
  }

  /// Returns a list of comments on a note.
  ///
  /// Params:
  ///
  /// `note_id` *(integer)* Note ID.
  ///
  /// `owner_id` *(integer)* Note owner ID.
  ///
  /// `sort` *(integer)*
  ///
  /// `offset` *(integer)*
  ///
  /// `count` *(integer)* Number of comments to return., default: 20, max: 100
  Future<dynamic> getComments([Map<String, dynamic> params]) async {
    return _api.request('notes.getComments', {
      ...?params,
    });
  }

  /// Restores a deleted comment on a note.
  ///
  /// Params:
  ///
  /// `comment_id` *(integer)* Comment ID.
  ///
  /// `owner_id` *(integer)* Note owner ID.
  Future<dynamic> restoreComment([Map<String, dynamic> params]) async {
    return _api.request('notes.restoreComment', {
      ...?params,
    });
  }
}
