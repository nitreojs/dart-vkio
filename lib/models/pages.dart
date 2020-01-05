import 'api.dart';

/// Pages class
class Pages {
  /// API class
  API _api;

  /// Pages
  Pages(API api) {
    _api = api;
  }

  @override
  String toString() {
    return 'Pages';
  }

  /// Allows to clear the cache of particular 'external' pages which may be attached to VK posts.
  ///
  /// Params:
  ///
  /// `url` *(string)* Address of the page where you need to refesh the cached version
  Future<Map> clearCache([Map<String, dynamic> params]) async {
    return _api.request('pages.clearCache', {
      ...?params,
    });
  }

  /// Returns information about a wiki page.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* Page owner ID.
  ///
  /// `page_id` *(integer)* Wiki page ID.
  ///
  /// `global` *(boolean)* '1' — to return information about a global wiki page
  ///
  /// `site_preview` *(boolean)* '1' — resulting wiki page is a preview for the attached link
  ///
  /// `title` *(string)* Wiki page title.
  ///
  /// `need_source` *(boolean)*
  ///
  /// `need_html` *(boolean)* '1' — to return the page as HTML,
  Future<Map> get([Map<String, dynamic> params]) async {
    return _api.request('pages.get', {
      ...?params,
    });
  }

  /// Returns a list of all previous versions of a wiki page.
  ///
  /// Params:
  ///
  /// `page_id` *(integer)* Wiki page ID.
  ///
  /// `group_id` *(integer)* ID of the community that owns the wiki page.
  ///
  /// `user_id` *(integer)*
  Future<Map> getHistory([Map<String, dynamic> params]) async {
    return _api.request('pages.getHistory', {
      ...?params,
    });
  }

  /// Returns a list of wiki pages in a group.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* ID of the community that owns the wiki page.
  Future<Map> getTitles([Map<String, dynamic> params]) async {
    return _api.request('pages.getTitles', {
      ...?params,
    });
  }

  /// Returns the text of one of the previous versions of a wiki page.
  ///
  /// Params:
  ///
  /// `version_id` *(integer)*
  ///
  /// `group_id` *(integer)* ID of the community that owns the wiki page.
  ///
  /// `user_id` *(integer)*
  ///
  /// `need_html` *(boolean)* '1' — to return the page as HTML
  Future<Map> getVersion([Map<String, dynamic> params]) async {
    return _api.request('pages.getVersion', {
      ...?params,
    });
  }

  /// Returns HTML representation of the wiki markup.
  ///
  /// Params:
  ///
  /// `text` *(string)* Text of the wiki page.
  ///
  /// `group_id` *(integer)* ID of the group in the context of which this markup is interpreted.
  Future<Map> parseWiki([Map<String, dynamic> params]) async {
    return _api.request('pages.parseWiki', {
      ...?params,
    });
  }

  /// Saves the text of a wiki page.
  ///
  /// Params:
  ///
  /// `text` *(string)* Text of the wiki page in wiki-format.
  ///
  /// `page_id` *(integer)* Wiki page ID. The 'title' parameter can be passed instead of 'pid'.
  ///
  /// `group_id` *(integer)* ID of the community that owns the wiki page.
  ///
  /// `user_id` *(integer)* User ID
  ///
  /// `title` *(string)* Wiki page title.
  Future<Map> save([Map<String, dynamic> params]) async {
    return _api.request('pages.save', {
      ...?params,
    });
  }

  /// Saves modified read and edit access settings for a wiki page.
  ///
  /// Params:
  ///
  /// `page_id` *(integer)* Wiki page ID.
  ///
  /// `group_id` *(integer)* ID of the community that owns the wiki page.
  ///
  /// `user_id` *(integer)*
  ///
  /// `view` *(integer)* Who can view the wiki page: '1' — only community members, '2' — all users can view the page, '0' — only community managers
  ///
  /// `edit` *(integer)* Who can edit the wiki page: '1' — only community members, '2' — all users can edit the page, '0' — only community managers
  Future<Map> saveAccess([Map<String, dynamic> params]) async {
    return _api.request('pages.saveAccess', {
      ...?params,
    });
  }
}
