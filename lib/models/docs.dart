import 'api.dart';

/// Docs class
class Docs {
  /// API class
  API _api;

  /// Docs
  Docs(API api) {
    _api = api;
  }

  @override
  String toString() {
    return 'Docs';
  }

  /// Copies a document to a user's or community's document list.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the document. Use a negative value to designate a community ID.
  ///
  /// `doc_id` *(integer)* Document ID.
  ///
  /// `access_key` *(string)* Access key. This parameter is required if 'access_key' was returned with the document's data.
  Future<Map> add([Map<String, dynamic> params]) async {
    return _api.request('docs.add', {
      ...?params,
    });
  }

  /// Deletes a user or community document.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the document. Use a negative value to designate a community ID.
  ///
  /// `doc_id` *(integer)* Document ID.
  Future<Map> delete([Map<String, dynamic> params]) async {
    return _api.request('docs.delete', {
      ...?params,
    });
  }

  /// Edits a document.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* User ID or community ID. Use a negative value to designate a community ID.
  ///
  /// `doc_id` *(integer)* Document ID.
  ///
  /// `title` *(string)* Document title.
  ///
  /// `tags` *(array)* Document tags.
  Future<Map> edit([Map<String, dynamic> params]) async {
    return _api.request('docs.edit', {
      ...?params,
    });
  }

  /// Returns detailed information about user or community documents.
  ///
  /// Params:
  ///
  /// `count` *(integer)* Number of documents to return. By default, all documents.
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of documents.
  ///
  /// `type` *(integer)*
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the documents. Use a negative value to designate a community ID.
  Future<Map> get([Map<String, dynamic> params]) async {
    return _api.request('docs.get', {
      ...?params,
    });
  }

  /// Returns information about documents by their IDs.
  ///
  /// Params:
  ///
  /// `docs` *(array)* Document IDs. Example: , "66748_91488,66748_91455",
  Future<Map> getById([Map<String, dynamic> params]) async {
    return _api.request('docs.getById', {
      ...?params,
    });
  }

  /// Returns the server address for document upload.
  ///
  /// Params:
  ///
  /// `type` *(string)* Document type., default: doc
  ///
  /// `peer_id` *(integer)* Destination ID. "For user: 'User ID', e.g. '12345'. For chat: '2000000000' + 'Chat ID', e.g. '2000000001'. For community: '- Community ID', e.g. '-12345'. "
  Future<Map> getMessagesUploadServer([Map<String, dynamic> params]) async {
    return _api.request('docs.getMessagesUploadServer', {
      ...?params,
    });
  }

  /// Returns documents types available for current user.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the documents. Use a negative value to designate a community ID.
  Future<Map> getTypes([Map<String, dynamic> params]) async {
    return _api.request('docs.getTypes', {
      ...?params,
    });
  }

  /// Returns the server address for document upload.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID (if the document will be uploaded to the community).
  Future<Map> getUploadServer([Map<String, dynamic> params]) async {
    return _api.request('docs.getUploadServer', {
      ...?params,
    });
  }

  /// Returns the server address for document upload onto a user's or community's wall.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID (if the document will be uploaded to the community).
  Future<Map> getWallUploadServer([Map<String, dynamic> params]) async {
    return _api.request('docs.getWallUploadServer', {
      ...?params,
    });
  }

  /// Saves a document after [uploading it to a server](https://vk.com/dev/upload_files_2).
  ///
  /// Params:
  ///
  /// `file` *(string)* This parameter is returned when the file is [uploaded to the server](https://vk.com/dev/upload_files_2).
  ///
  /// `title` *(string)* Document title.
  ///
  /// `tags` *(string)* Document tags.
  Future<Map> save([Map<String, dynamic> params]) async {
    return _api.request('docs.save', {
      ...?params,
    });
  }

  /// Returns a list of documents matching the search criteria.
  ///
  /// Params:
  ///
  /// `q` *(string)* Search query string.
  ///
  /// `search_own` *(boolean)*
  ///
  /// `count` *(integer)* Number of results to return.
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of results.
  Future<Map> search([Map<String, dynamic> params]) async {
    return _api.request('docs.search', {
      ...?params,
    });
  }
}
