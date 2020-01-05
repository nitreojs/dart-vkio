import './api.dart';

/// Video class
class Video {
  /// API class
  API _api;

  /// Video
  Video(API api) {
    _api = api;
  }

  toString() {
    return 'Video';
  }

  /// Adds a video to a user or community page.
  ///
  /// Params:
  ///
  /// `target_id` *(integer)* identifier of a user or community to add a video to. Use a negative value to designate a community ID.
  ///
  /// `video_id` *(integer)* Video ID.
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the video. Use a negative value to designate a community ID.
  Future<Map> add([Map<String, String> params]) async {
    return _api.request('video.add', {
      ...?params,
    });
  }

  /// Creates an empty album for videos.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID (if the album will be created in a community).
  ///
  /// `title` *(string)* Album title.
  ///
  /// `privacy` *(array)* new access permissions for the album. Possible values: , *'0' – all users,, *'1' – friends only,, *'2' – friends and friends of friends,, *'3' – "only me".
  Future<Map> addAlbum([Map<String, String> params]) async {
    return _api.request('video.addAlbum', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `target_id` *(integer)*
  ///
  /// `album_id` *(integer)*
  ///
  /// `album_ids` *(array)*
  ///
  /// `owner_id` *(integer)*
  ///
  /// `video_id` *(integer)*
  Future<Map> addToAlbum([Map<String, String> params]) async {
    return _api.request('video.addToAlbum', {
      ...?params,
    });
  }

  /// Adds a new comment on a video.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the video.
  ///
  /// `video_id` *(integer)* Video ID.
  ///
  /// `message` *(string)* New comment text.
  ///
  /// `attachments` *(array)* List of objects attached to the comment, in the following format: "<owner_id>_<media_id>,<owner_id>_<media_id>", '' — Type of media attachment: 'photo' — photo, 'video' — video, 'audio' — audio, 'doc' — document, '<owner_id>' — ID of the media attachment owner. '<media_id>' — Media attachment ID. Example: "photo100172_166443618,photo66748_265827614"
  ///
  /// `from_group` *(boolean)* '1' — to post the comment from a community name (only if 'owner_id'<0)
  ///
  /// `reply_to_comment` *(integer)*
  ///
  /// `sticker_id` *(integer)*
  ///
  /// `guid` *(string)*
  Future<Map> createComment([Map<String, String> params]) async {
    return _api.request('video.createComment', {
      ...?params,
    });
  }

  /// Deletes a video from a user or community page.
  ///
  /// Params:
  ///
  /// `video_id` *(integer)* Video ID.
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the video.
  ///
  /// `target_id` *(integer)*
  Future<Map> delete([Map<String, String> params]) async {
    return _api.request('video.delete', {
      ...?params,
    });
  }

  /// Deletes a video album.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID (if the album is owned by a community).
  ///
  /// `album_id` *(integer)* Album ID.
  Future<Map> deleteAlbum([Map<String, String> params]) async {
    return _api.request('video.deleteAlbum', {
      ...?params,
    });
  }

  /// Deletes a comment on a video.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the video.
  ///
  /// `comment_id` *(integer)* ID of the comment to be deleted.
  Future<Map> deleteComment([Map<String, String> params]) async {
    return _api.request('video.deleteComment', {
      ...?params,
    });
  }

  /// Edits information about a video on a user or community page.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the video.
  ///
  /// `video_id` *(integer)* Video ID.
  ///
  /// `name` *(string)* New video title.
  ///
  /// `desc` *(string)* New video description.
  ///
  /// `privacy_view` *(array)* Privacy settings in a [special format](https://vk.com/dev/privacy_setting). Privacy setting is available for videos uploaded to own profile by user.
  ///
  /// `privacy_comment` *(array)* Privacy settings for comments in a [special format](https://vk.com/dev/privacy_setting).
  ///
  /// `no_comments` *(boolean)* Disable comments for the group video.
  ///
  /// `repeat` *(boolean)* '1' — to repeat the playback of the video, '0' — to play the video once,
  Future<Map> edit([Map<String, String> params]) async {
    return _api.request('video.edit', {
      ...?params,
    });
  }

  /// Edits the title of a video album.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID (if the album edited is owned by a community).
  ///
  /// `album_id` *(integer)* Album ID.
  ///
  /// `title` *(string)* New album title.
  ///
  /// `privacy` *(array)* new access permissions for the album. Possible values: , *'0' – all users,, *'1' – friends only,, *'2' – friends and friends of friends,, *'3' – "only me".
  Future<Map> editAlbum([Map<String, String> params]) async {
    return _api.request('video.editAlbum', {
      ...?params,
    });
  }

  /// Edits the text of a comment on a video.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the video.
  ///
  /// `comment_id` *(integer)* Comment ID.
  ///
  /// `message` *(string)* New comment text.
  ///
  /// `attachments` *(array)* List of objects attached to the comment, in the following format: "<owner_id>_<media_id>,<owner_id>_<media_id>", '' — Type of media attachment: 'photo' — photo, 'video' — video, 'audio' — audio, 'doc' — document, '<owner_id>' — ID of the media attachment owner. '<media_id>' — Media attachment ID. Example: "photo100172_166443618,photo66748_265827614"
  Future<Map> editComment([Map<String, String> params]) async {
    return _api.request('video.editComment', {
      ...?params,
    });
  }

  /// Returns detailed information about videos.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the video(s).
  ///
  /// `videos` *(array)* Video IDs, in the following format: "<owner_id>_<media_id>,<owner_id>_<media_id>", Use a negative value to designate a community ID. Example: "-4363_136089719,13245770_137352259"
  ///
  /// `album_id` *(integer)* ID of the album containing the video(s).
  ///
  /// `count` *(integer)* Number of videos to return., default: 100, max: 200
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of videos.
  ///
  /// `extended` *(boolean)* '1' — to return an extended response with additional fields
  Future<Map> get([Map<String, String> params]) async {
    return _api.request('video.get', {
      ...?params,
    });
  }

  /// Returns video album info
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* identifier of a user or community to add a video to. Use a negative value to designate a community ID.
  ///
  /// `album_id` *(integer)* Album ID.
  Future<Map> getAlbumById([Map<String, String> params]) async {
    return _api.request('video.getAlbumById', {
      ...?params,
    });
  }

  /// Returns a list of video albums owned by a user or community.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the video album(s).
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of video albums.
  ///
  /// `count` *(integer)* Number of video albums to return., default: 50, max: 100
  ///
  /// `extended` *(boolean)* '1' — to return additional information about album privacy settings for the current user
  ///
  /// `need_system` *(boolean)*
  Future<Map> getAlbums([Map<String, String> params]) async {
    return _api.request('video.getAlbums', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `target_id` *(integer)*
  ///
  /// `owner_id` *(integer)*
  ///
  /// `video_id` *(integer)*
  ///
  /// `extended` *(boolean)*
  Future<Map> getAlbumsByVideo([Map<String, String> params]) async {
    return _api.request('video.getAlbumsByVideo', {
      ...?params,
    });
  }

  /// Returns a list of comments on a video.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the video.
  ///
  /// `video_id` *(integer)* Video ID.
  ///
  /// `need_likes` *(boolean)* '1' — to return an additional 'likes' field
  ///
  /// `start_comment_id` *(integer)*
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of comments.
  ///
  /// `count` *(integer)* Number of comments to return., default: 20, max: 100
  ///
  /// `sort` *(string)* Sort order: 'asc' — oldest comment first, 'desc' — newest comment first
  ///
  /// `extended` *(boolean)*
  ///
  /// `fields` *(array)*
  Future<Map> getComments([Map<String, String> params]) async {
    return _api.request('video.getComments', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `target_id` *(integer)*
  ///
  /// `album_id` *(integer)*
  ///
  /// `album_ids` *(array)*
  ///
  /// `owner_id` *(integer)*
  ///
  /// `video_id` *(integer)*
  Future<Map> removeFromAlbum([Map<String, String> params]) async {
    return _api.request('video.removeFromAlbum', {
      ...?params,
    });
  }

  /// Reorders the album in the list of user video albums.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the albums..
  ///
  /// `album_id` *(integer)* Album ID.
  ///
  /// `before` *(integer)* ID of the album before which the album in question shall be placed.
  ///
  /// `after` *(integer)* ID of the album after which the album in question shall be placed.
  Future<Map> reorderAlbums([Map<String, String> params]) async {
    return _api.request('video.reorderAlbums', {
      ...?params,
    });
  }

  /// Reorders the video in the video album.
  ///
  /// Params:
  ///
  /// `target_id` *(integer)* ID of the user or community that owns the album with videos.
  ///
  /// `album_id` *(integer)* ID of the video album.
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the video.
  ///
  /// `video_id` *(integer)* ID of the video.
  ///
  /// `before_owner_id` *(integer)* ID of the user or community that owns the video before which the video in question shall be placed.
  ///
  /// `before_video_id` *(integer)* ID of the video before which the video in question shall be placed.
  ///
  /// `after_owner_id` *(integer)* ID of the user or community that owns the video after which the photo in question shall be placed.
  ///
  /// `after_video_id` *(integer)* ID of the video after which the photo in question shall be placed.
  Future<Map> reorderVideos([Map<String, String> params]) async {
    return _api.request('video.reorderVideos', {
      ...?params,
    });
  }

  /// Reports (submits a complaint about) a video.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the video.
  ///
  /// `video_id` *(integer)* Video ID.
  ///
  /// `reason` *(integer)* Reason for the complaint: '0' – spam, '1' – child pornography, '2' – extremism, '3' – violence, '4' – drug propaganda, '5' – adult material, '6' – insult, abuse
  ///
  /// `comment` *(string)* Comment describing the complaint.
  ///
  /// `search_query` *(string)* (If the video was found in search results.) Search query string.
  Future<Map> report([Map<String, String> params]) async {
    return _api.request('video.report', {
      ...?params,
    });
  }

  /// Reports (submits a complaint about) a comment on a video.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the video.
  ///
  /// `comment_id` *(integer)* ID of the comment being reported.
  ///
  /// `reason` *(integer)* Reason for the complaint: , 0 – spam , 1 – child pornography , 2 – extremism , 3 – violence , 4 – drug propaganda , 5 – adult material , 6 – insult, abuse
  Future<Map> reportComment([Map<String, String> params]) async {
    return _api.request('video.reportComment', {
      ...?params,
    });
  }

  /// Restores a previously deleted video.
  ///
  /// Params:
  ///
  /// `video_id` *(integer)* Video ID.
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the video.
  Future<Map> restore([Map<String, String> params]) async {
    return _api.request('video.restore', {
      ...?params,
    });
  }

  /// Restores a previously deleted comment on a video.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the video.
  ///
  /// `comment_id` *(integer)* ID of the deleted comment.
  Future<Map> restoreComment([Map<String, String> params]) async {
    return _api.request('video.restoreComment', {
      ...?params,
    });
  }

  /// Returns a server address (required for upload) and video data.
  ///
  /// Params:
  ///
  /// `name` *(string)* Name of the video.
  ///
  /// `description` *(string)* Description of the video.
  ///
  /// `is_private` *(boolean)* '1' — to designate the video as private (send it via a private message), the video will not appear on the user's video list and will not be available by ID for other users, '0' — not to designate the video as private
  ///
  /// `wallpost` *(boolean)* '1' — to post the saved video on a user's wall, '0' — not to post the saved video on a user's wall
  ///
  /// `link` *(string)* URL for embedding the video from an external website.
  ///
  /// `group_id` *(integer)* ID of the community in which the video will be saved. By default, the current user's page.
  ///
  /// `album_id` *(integer)* ID of the album to which the saved video will be added.
  ///
  /// `privacy_view` *(array)*
  ///
  /// `privacy_comment` *(array)*
  ///
  /// `no_comments` *(boolean)*
  ///
  /// `repeat` *(boolean)* '1' — to repeat the playback of the video, '0' — to play the video once,
  ///
  /// `compression` *(boolean)*
  Future<Map> save([Map<String, String> params]) async {
    return _api.request('video.save', {
      ...?params,
    });
  }

  /// Returns a list of videos under the set search criterion.
  ///
  /// Params:
  ///
  /// `q` *(string)* Search query string (e.g., 'The Beatles').
  ///
  /// `sort` *(integer)* Sort order: '1' — by duration, '2' — by relevance, '0' — by date added
  ///
  /// `hd` *(integer)* If not null, only searches for high-definition videos.
  ///
  /// `adult` *(boolean)* '1' — to disable the Safe Search filter, '0' — to enable the Safe Search filter
  ///
  /// `filters` *(array)* Filters to apply: 'youtube' — return YouTube videos only, 'vimeo' — return Vimeo videos only, 'short' — return short videos only, 'long' — return long videos only
  ///
  /// `search_own` *(boolean)*
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of videos.
  ///
  /// `longer` *(integer)*
  ///
  /// `shorter` *(integer)*
  ///
  /// `count` *(integer)* Number of videos to return., default: 20, max: 200
  ///
  /// `extended` *(boolean)*
  Future<Map> search([Map<String, String> params]) async {
    return _api.request('video.search', {
      ...?params,
    });
  }
}
