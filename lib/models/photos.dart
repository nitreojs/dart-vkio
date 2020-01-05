import './api.dart';

/// Photos class
class Photos {
  /// API class
  API _api;

  /// Photos
  Photos(API api) {
    _api = api;
  }

  String toString() {
    return 'Photos';
  }

  /// Confirms a tag on a photo.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the photo.
  ///
  /// `photo_id` *(string)* Photo ID.
  ///
  /// `tag_id` *(integer)* Tag ID.
  Future<Map> confirmTag([Map<String, String> params]) async {
    return _api.request('photos.confirmTag', {
      ...?params,
    });
  }

  /// Allows to copy a photo to the "Saved photos" album
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* photo's owner ID
  ///
  /// `photo_id` *(integer)* photo ID
  ///
  /// `access_key` *(string)* for private photos
  Future<Map> copy([Map<String, String> params]) async {
    return _api.request('photos.copy', {
      ...?params,
    });
  }

  /// Creates an empty photo album.
  ///
  /// Params:
  ///
  /// `title` *(string)* Album title.
  ///
  /// `group_id` *(integer)* ID of the community in which the album will be created.
  ///
  /// `description` *(string)* Album description.
  ///
  /// `privacy_view` *(array)*, default: all
  ///
  /// `privacy_comment` *(array)*, default: all
  ///
  /// `upload_by_admins_only` *(boolean)*
  ///
  /// `comments_disabled` *(boolean)*
  Future<Map> createAlbum([Map<String, String> params]) async {
    return _api.request('photos.createAlbum', {
      ...?params,
    });
  }

  /// Adds a new comment on the photo.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the photo.
  ///
  /// `photo_id` *(integer)* Photo ID.
  ///
  /// `message` *(string)* Comment text.
  ///
  /// `attachments` *(array)* (Required if 'message' is not set.) List of objects attached to the post, in the following format: "<owner_id>_<media_id>,<owner_id>_<media_id>", '' — Type of media attachment: 'photo' — photo, 'video' — video, 'audio' — audio, 'doc' — document, '<owner_id>' — Media attachment owner ID. '<media_id>' — Media attachment ID. Example: "photo100172_166443618,photo66748_265827614"
  ///
  /// `from_group` *(boolean)* '1' — to post a comment from the community
  ///
  /// `reply_to_comment` *(integer)*
  ///
  /// `sticker_id` *(integer)*
  ///
  /// `access_key` *(string)*
  ///
  /// `guid` *(string)*
  Future<Map> createComment([Map<String, String> params]) async {
    return _api.request('photos.createComment', {
      ...?params,
    });
  }

  /// Deletes a photo.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the photo.
  ///
  /// `photo_id` *(integer)* Photo ID.
  Future<Map> delete([Map<String, String> params]) async {
    return _api.request('photos.delete', {
      ...?params,
    });
  }

  /// Deletes a photo album belonging to the current user.
  ///
  /// Params:
  ///
  /// `album_id` *(integer)* Album ID.
  ///
  /// `group_id` *(integer)* ID of the community that owns the album.
  Future<Map> deleteAlbum([Map<String, String> params]) async {
    return _api.request('photos.deleteAlbum', {
      ...?params,
    });
  }

  /// Deletes a comment on the photo.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the photo.
  ///
  /// `comment_id` *(integer)* Comment ID.
  Future<Map> deleteComment([Map<String, String> params]) async {
    return _api.request('photos.deleteComment', {
      ...?params,
    });
  }

  /// Edits the caption of a photo.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the photo.
  ///
  /// `photo_id` *(integer)* Photo ID.
  ///
  /// `caption` *(string)* New caption for the photo. If this parameter is not set, it is considered to be equal to an empty string.
  ///
  /// `latitude` *(number)*
  ///
  /// `longitude` *(number)*
  ///
  /// `place_str` *(string)*
  ///
  /// `foursquare_id` *(string)*
  ///
  /// `delete_place` *(boolean)*
  Future<Map> edit([Map<String, String> params]) async {
    return _api.request('photos.edit', {
      ...?params,
    });
  }

  /// Edits information about a photo album.
  ///
  /// Params:
  ///
  /// `album_id` *(integer)* ID of the photo album to be edited.
  ///
  /// `title` *(string)* New album title.
  ///
  /// `description` *(string)* New album description.
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the album.
  ///
  /// `privacy_view` *(array)*
  ///
  /// `privacy_comment` *(array)*
  ///
  /// `upload_by_admins_only` *(boolean)*
  ///
  /// `comments_disabled` *(boolean)*
  Future<Map> editAlbum([Map<String, String> params]) async {
    return _api.request('photos.editAlbum', {
      ...?params,
    });
  }

  /// Edits a comment on a photo.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the photo.
  ///
  /// `comment_id` *(integer)* Comment ID.
  ///
  /// `message` *(string)* New text of the comment.
  ///
  /// `attachments` *(array)* (Required if 'message' is not set.) List of objects attached to the post, in the following format: "<owner_id>_<media_id>,<owner_id>_<media_id>", '' — Type of media attachment: 'photo' — photo, 'video' — video, 'audio' — audio, 'doc' — document, '<owner_id>' — Media attachment owner ID. '<media_id>' — Media attachment ID. Example: "photo100172_166443618,photo66748_265827614"
  Future<Map> editComment([Map<String, String> params]) async {
    return _api.request('photos.editComment', {
      ...?params,
    });
  }

  /// Returns a list of a user's or community's photos.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the photos. Use a negative value to designate a community ID.
  ///
  /// `album_id` *(string)* Photo album ID. To return information about photos from service albums, use the following string values: 'profile, wall, saved'.
  ///
  /// `photo_ids` *(array)* Photo IDs.
  ///
  /// `rev` *(boolean)* Sort order: '1' — reverse chronological, '0' — chronological
  ///
  /// `extended` *(boolean)* '1' — to return additional 'likes', 'comments', and 'tags' fields, '0' — (default)
  ///
  /// `feed_type` *(string)* Type of feed obtained in 'feed' field of the method.
  ///
  /// `feed` *(integer)* unixtime, that can be obtained with [newsfeed.get](https://vk.com/dev/newsfeed.get) method in date field to get all photos uploaded by the user on a specific day, or photos the user has been tagged on. Also, 'uid' parameter of the user the event happened with shall be specified.
  ///
  /// `photo_sizes` *(boolean)* '1' — to return photo sizes in a [special format](https://vk.com/dev/photo_sizes)
  ///
  /// `offset` *(integer)*
  ///
  /// `count` *(integer)*, default: 50, max: 1000
  Future<Map> get([Map<String, String> params]) async {
    return _api.request('photos.get', {
      ...?params,
    });
  }

  /// Returns a list of a user's or community's photo albums.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the albums.
  ///
  /// `album_ids` *(array)* Album IDs.
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of albums.
  ///
  /// `count` *(integer)* Number of albums to return.
  ///
  /// `need_system` *(boolean)* '1' — to return system albums with negative IDs
  ///
  /// `need_covers` *(boolean)* '1' — to return an additional 'thumb_src' field, '0' — (default)
  ///
  /// `photo_sizes` *(boolean)* '1' — to return photo sizes in a
  Future<Map> getAlbums([Map<String, String> params]) async {
    return _api.request('photos.getAlbums', {
      ...?params,
    });
  }

  /// Returns the number of photo albums belonging to a user or community.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* User ID.
  ///
  /// `group_id` *(integer)* Community ID.
  Future<Map> getAlbumsCount([Map<String, String> params]) async {
    return _api.request('photos.getAlbumsCount', {
      ...?params,
    });
  }

  /// Returns a list of photos belonging to a user or community, in reverse chronological order.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of a user or community that owns the photos. Use a negative value to designate a community ID.
  ///
  /// `extended` *(boolean)* '1' — to return detailed information about photos
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of photos. By default, '0'.
  ///
  /// `count` *(integer)* Number of photos to return., default: 20, max: 200
  ///
  /// `photo_sizes` *(boolean)* '1' – to return image sizes in [special format](https://vk.com/dev/photo_sizes).
  ///
  /// `no_service_albums` *(boolean)* '1' – to return photos only from standard albums, '0' – to return all photos including those in service albums, e.g., 'My wall photos' (default)
  ///
  /// `need_hidden` *(boolean)* '1' – to show information about photos being hidden from the block above the wall.
  ///
  /// `skip_hidden` *(boolean)* '1' – not to return photos being hidden from the block above the wall. Works only with owner_id>0, no_service_albums is ignored.
  Future<Map> getAll([Map<String, String> params]) async {
    return _api.request('photos.getAll', {
      ...?params,
    });
  }

  /// Returns a list of comments on a specific photo album or all albums of the user sorted in reverse chronological order.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the album(s).
  ///
  /// `album_id` *(integer)* Album ID. If the parameter is not set, comments on all of the user's albums will be returned.
  ///
  /// `need_likes` *(boolean)* '1' — to return an additional 'likes' field, '0' — (default)
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of comments. By default, '0'.
  ///
  /// `count` *(integer)* Number of comments to return. By default, '20'. Maximum value, '100'.
  Future<Map> getAllComments([Map<String, String> params]) async {
    return _api.request('photos.getAllComments', {
      ...?params,
    });
  }

  /// Returns information about photos by their IDs.
  ///
  /// Params:
  ///
  /// `photos` *(array)* IDs separated with a comma, that are IDs of users who posted photos and IDs of photos themselves with an underscore character between such IDs. To get information about a photo in the group album, you shall specify group ID instead of user ID. Example: "1_129207899,6492_135055734, , -20629724_271945303"
  ///
  /// `extended` *(boolean)* '1' — to return additional fields, '0' — (default)
  ///
  /// `photo_sizes` *(boolean)* '1' — to return photo sizes in a
  Future<Map> getById([Map<String, String> params]) async {
    return _api.request('photos.getById', {
      ...?params,
    });
  }

  /// Returns an upload link for chat cover pictures.
  ///
  /// Params:
  ///
  /// `chat_id` *(integer)* ID of the chat for which you want to upload a cover photo.
  ///
  /// `crop_x` *(integer)*
  ///
  /// `crop_y` *(integer)*
  ///
  /// `crop_width` *(integer)* Width (in pixels) of the photo after cropping., min: 200
  Future<Map> getChatUploadServer([Map<String, String> params]) async {
    return _api.request('photos.getChatUploadServer', {
      ...?params,
    });
  }

  /// Returns a list of comments on a photo.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the photo.
  ///
  /// `photo_id` *(integer)* Photo ID.
  ///
  /// `need_likes` *(boolean)* '1' — to return an additional 'likes' field, '0' — (default)
  ///
  /// `start_comment_id` *(integer)*
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of comments. By default, '0'.
  ///
  /// `count` *(integer)* Number of comments to return., default: 20, max: 100
  ///
  /// `sort` *(string)* Sort order: 'asc' — old first, 'desc' — new first
  ///
  /// `access_key` *(string)*
  ///
  /// `extended` *(boolean)*
  ///
  /// `fields` *(array)*
  Future<Map> getComments([Map<String, String> params]) async {
    return _api.request('photos.getComments', {
      ...?params,
    });
  }

  /// Returns the server address for market album photo upload.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID.
  Future<Map> getMarketAlbumUploadServer([Map<String, String> params]) async {
    return _api.request('photos.getMarketAlbumUploadServer', {
      ...?params,
    });
  }

  /// Returns the server address for market photo upload.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID.
  ///
  /// `main_photo` *(boolean)* '1' if you want to upload the main item photo.
  ///
  /// `crop_x` *(integer)* X coordinate of the crop left upper corner.
  ///
  /// `crop_y` *(integer)* Y coordinate of the crop left upper corner.
  ///
  /// `crop_width` *(integer)* Width of the cropped photo in px., min: 400
  Future<Map> getMarketUploadServer([Map<String, String> params]) async {
    return _api.request('photos.getMarketUploadServer', {
      ...?params,
    });
  }

  /// Returns the server address for photo upload in a private message for a user.
  ///
  /// Params:
  ///
  /// `peer_id` *(integer)* Destination ID. "For user: 'User ID', e.g. '12345'. For chat: '2000000000' + 'Chat ID', e.g. '2000000001'. For community: '- Community ID', e.g. '-12345'. "
  Future<Map> getMessagesUploadServer([Map<String, String> params]) async {
    return _api.request('photos.getMessagesUploadServer', {
      ...?params,
    });
  }

  /// Returns a list of photos with tags that have not been viewed.
  ///
  /// Params:
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of photos.
  ///
  /// `count` *(integer)* Number of photos to return., default: 20, max: 100
  Future<Map> getNewTags([Map<String, String> params]) async {
    return _api.request('photos.getNewTags', {
      ...?params,
    });
  }

  /// Returns the server address for owner cover upload.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* ID of community that owns the album (if the photo will be uploaded to a community album).
  ///
  /// `crop_x` *(integer)* X coordinate of the left-upper corner
  ///
  /// `crop_y` *(integer)* Y coordinate of the left-upper corner
  ///
  /// `crop_x2` *(integer)* X coordinate of the right-bottom corner, default: 795
  ///
  /// `crop_y2` *(integer)* Y coordinate of the right-bottom corner, default: 200
  Future<Map> getOwnerCoverPhotoUploadServer(
      [Map<String, String> params]) async {
    return _api.request('photos.getOwnerCoverPhotoUploadServer', {
      ...?params,
    });
  }

  /// Returns an upload server address for a profile or community photo.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* identifier of a community or current user. "Note that community id must be negative. 'owner_id=1' – user, 'owner_id=-1' – community, "
  Future<Map> getOwnerPhotoUploadServer([Map<String, String> params]) async {
    return _api.request('photos.getOwnerPhotoUploadServer', {
      ...?params,
    });
  }

  /// Returns a list of tags on a photo.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the photo.
  ///
  /// `photo_id` *(integer)* Photo ID.
  ///
  /// `access_key` *(string)*
  Future<Map> getTags([Map<String, String> params]) async {
    return _api.request('photos.getTags', {
      ...?params,
    });
  }

  /// Returns the server address for photo upload.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* ID of community that owns the album (if the photo will be uploaded to a community album).
  ///
  /// `album_id` *(integer)*
  Future<Map> getUploadServer([Map<String, String> params]) async {
    return _api.request('photos.getUploadServer', {
      ...?params,
    });
  }

  /// Returns a list of photos in which a user is tagged.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* User ID.
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of photos. By default, '0'.
  ///
  /// `count` *(integer)* Number of photos to return. Maximum value is 1000., default: 20, max: 1000
  ///
  /// `extended` *(boolean)* '1' — to return an additional 'likes' field, '0' — (default)
  ///
  /// `sort` *(string)* Sort order: '1' — by date the tag was added in ascending order, '0' — by date the tag was added in descending order
  Future<Map> getUserPhotos([Map<String, String> params]) async {
    return _api.request('photos.getUserPhotos', {
      ...?params,
    });
  }

  /// Returns the server address for photo upload onto a user's wall.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* ID of community to whose wall the photo will be uploaded.
  Future<Map> getWallUploadServer([Map<String, String> params]) async {
    return _api.request('photos.getWallUploadServer', {
      ...?params,
    });
  }

  /// Makes a photo into an album cover.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the photo.
  ///
  /// `photo_id` *(integer)* Photo ID.
  ///
  /// `album_id` *(integer)* Album ID.
  Future<Map> makeCover([Map<String, String> params]) async {
    return _api.request('photos.makeCover', {
      ...?params,
    });
  }

  /// Moves a photo from one album to another.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the photo.
  ///
  /// `target_album_id` *(integer)* ID of the album to which the photo will be moved.
  ///
  /// `photo_id` *(integer)* Photo ID.
  Future<Map> move([Map<String, String> params]) async {
    return _api.request('photos.move', {
      ...?params,
    });
  }

  /// Adds a tag on the photo.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the photo.
  ///
  /// `photo_id` *(integer)* Photo ID.
  ///
  /// `user_id` *(integer)* ID of the user to be tagged.
  ///
  /// `x` *(number)* Upper left-corner coordinate of the tagged area (as a percentage of the photo's width).
  ///
  /// `y` *(number)* Upper left-corner coordinate of the tagged area (as a percentage of the photo's height).
  ///
  /// `x2` *(number)* Lower right-corner coordinate of the tagged area (as a percentage of the photo's width).
  ///
  /// `y2` *(number)* Lower right-corner coordinate of the tagged area (as a percentage of the photo's height).
  Future<Map> putTag([Map<String, String> params]) async {
    return _api.request('photos.putTag', {
      ...?params,
    });
  }

  /// Removes a tag from a photo.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the photo.
  ///
  /// `photo_id` *(integer)* Photo ID.
  ///
  /// `tag_id` *(integer)* Tag ID.
  Future<Map> removeTag([Map<String, String> params]) async {
    return _api.request('photos.removeTag', {
      ...?params,
    });
  }

  /// Reorders the album in the list of user albums.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the album.
  ///
  /// `album_id` *(integer)* Album ID.
  ///
  /// `before` *(integer)* ID of the album before which the album in question shall be placed.
  ///
  /// `after` *(integer)* ID of the album after which the album in question shall be placed.
  Future<Map> reorderAlbums([Map<String, String> params]) async {
    return _api.request('photos.reorderAlbums', {
      ...?params,
    });
  }

  /// Reorders the photo in the list of photos of the user album.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the photo.
  ///
  /// `photo_id` *(integer)* Photo ID.
  ///
  /// `before` *(integer)* ID of the photo before which the photo in question shall be placed.
  ///
  /// `after` *(integer)* ID of the photo after which the photo in question shall be placed.
  Future<Map> reorderPhotos([Map<String, String> params]) async {
    return _api.request('photos.reorderPhotos', {
      ...?params,
    });
  }

  /// Reports (submits a complaint about) a photo.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the photo.
  ///
  /// `photo_id` *(integer)* Photo ID.
  ///
  /// `reason` *(integer)* Reason for the complaint: '0' – spam, '1' – child pornography, '2' – extremism, '3' – violence, '4' – drug propaganda, '5' – adult material, '6' – insult, abuse
  Future<Map> report([Map<String, String> params]) async {
    return _api.request('photos.report', {
      ...?params,
    });
  }

  /// Reports (submits a complaint about) a comment on a photo.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the photo.
  ///
  /// `comment_id` *(integer)* ID of the comment being reported.
  ///
  /// `reason` *(integer)* Reason for the complaint: '0' – spam, '1' – child pornography, '2' – extremism, '3' – violence, '4' – drug propaganda, '5' – adult material, '6' – insult, abuse
  Future<Map> reportComment([Map<String, String> params]) async {
    return _api.request('photos.reportComment', {
      ...?params,
    });
  }

  /// Restores a deleted photo.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the photo.
  ///
  /// `photo_id` *(integer)* Photo ID.
  Future<Map> restore([Map<String, String> params]) async {
    return _api.request('photos.restore', {
      ...?params,
    });
  }

  /// Restores a deleted comment on a photo.
  ///
  /// Params:
  ///
  /// `owner_id` *(integer)* ID of the user or community that owns the photo.
  ///
  /// `comment_id` *(integer)* ID of the deleted comment.
  Future<Map> restoreComment([Map<String, String> params]) async {
    return _api.request('photos.restoreComment', {
      ...?params,
    });
  }

  /// Saves photos after successful uploading.
  ///
  /// Params:
  ///
  /// `album_id` *(integer)* ID of the album to save photos to.
  ///
  /// `group_id` *(integer)* ID of the community to save photos to.
  ///
  /// `server` *(integer)* Parameter returned when photos are [uploaded to server](https://vk.com/dev/upload_files).
  ///
  /// `photos_list` *(string)* Parameter returned when photos are [uploaded to server](https://vk.com/dev/upload_files).
  ///
  /// `hash` *(string)* Parameter returned when photos are [uploaded to server](https://vk.com/dev/upload_files).
  ///
  /// `latitude` *(number)* Geographical latitude, in degrees (from '-90' to '90').
  ///
  /// `longitude` *(number)* Geographical longitude, in degrees (from '-180' to '180').
  ///
  /// `caption` *(string)* Text describing the photo. 2048 digits max.
  Future<Map> save([Map<String, String> params]) async {
    return _api.request('photos.save', {
      ...?params,
    });
  }

  /// Saves market album photos after successful uploading.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID.
  ///
  /// `photo` *(string)* Parameter returned when photos are [uploaded to server](https://vk.com/dev/upload_files).
  ///
  /// `server` *(integer)* Parameter returned when photos are [uploaded to server](https://vk.com/dev/upload_files).
  ///
  /// `hash` *(string)* Parameter returned when photos are [uploaded to server](https://vk.com/dev/upload_files).
  Future<Map> saveMarketAlbumPhoto([Map<String, String> params]) async {
    return _api.request('photos.saveMarketAlbumPhoto', {
      ...?params,
    });
  }

  /// Saves market photos after successful uploading.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID.
  ///
  /// `photo` *(string)* Parameter returned when photos are [uploaded to server](https://vk.com/dev/upload_files).
  ///
  /// `server` *(integer)* Parameter returned when photos are [uploaded to server](https://vk.com/dev/upload_files).
  ///
  /// `hash` *(string)* Parameter returned when photos are [uploaded to server](https://vk.com/dev/upload_files).
  ///
  /// `crop_data` *(string)* Parameter returned when photos are [uploaded to server](https://vk.com/dev/upload_files).
  ///
  /// `crop_hash` *(string)* Parameter returned when photos are [uploaded to server](https://vk.com/dev/upload_files).
  Future<Map> saveMarketPhoto([Map<String, String> params]) async {
    return _api.request('photos.saveMarketPhoto', {
      ...?params,
    });
  }

  /// Saves a photo after being successfully uploaded. URL obtained with [photos.getMessagesUploadServer](https://vk.com/dev/photos.getMessagesUploadServer) method.
  ///
  /// Params:
  ///
  /// `photo` *(string)* Parameter returned when the photo is [uploaded to the server](https://vk.com/dev/upload_files).
  ///
  /// `server` *(integer)*
  ///
  /// `hash` *(string)*
  Future<Map> saveMessagesPhoto([Map<String, String> params]) async {
    return _api.request('photos.saveMessagesPhoto', {
      ...?params,
    });
  }

  /// Saves cover photo after successful uploading.
  ///
  /// Params:
  ///
  /// `hash` *(string)* Parameter returned when photos are [uploaded to server](https://vk.com/dev/upload_files).
  ///
  /// `photo` *(string)* Parameter returned when photos are [uploaded to server](https://vk.com/dev/upload_files).
  Future<Map> saveOwnerCoverPhoto([Map<String, String> params]) async {
    return _api.request('photos.saveOwnerCoverPhoto', {
      ...?params,
    });
  }

  /// Saves a profile or community photo. Upload URL can be got with the [photos.getOwnerPhotoUploadServer](https://vk.com/dev/photos.getOwnerPhotoUploadServer) method.
  ///
  /// Params:
  ///
  /// `server` *(string)* parameter returned after [photo upload](https://vk.com/dev/upload_files).
  ///
  /// `hash` *(string)* parameter returned after [photo upload](https://vk.com/dev/upload_files).
  ///
  /// `photo` *(string)* parameter returned after [photo upload](https://vk.com/dev/upload_files).
  Future<Map> saveOwnerPhoto([Map<String, String> params]) async {
    return _api.request('photos.saveOwnerPhoto', {
      ...?params,
    });
  }

  /// Saves a photo to a user's or community's wall after being uploaded.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* ID of the user on whose wall the photo will be saved.
  ///
  /// `group_id` *(integer)* ID of community on whose wall the photo will be saved.
  ///
  /// `photo` *(string)* Parameter returned when the the photo is [uploaded to the server](https://vk.com/dev/upload_files).
  ///
  /// `server` *(integer)*
  ///
  /// `hash` *(string)*
  ///
  /// `latitude` *(number)* Geographical latitude, in degrees (from '-90' to '90').
  ///
  /// `longitude` *(number)* Geographical longitude, in degrees (from '-180' to '180').
  ///
  /// `caption` *(string)* Text describing the photo. 2048 digits max.
  Future<Map> saveWallPhoto([Map<String, String> params]) async {
    return _api.request('photos.saveWallPhoto', {
      ...?params,
    });
  }

  /// Returns a list of photos.
  ///
  /// Params:
  ///
  /// `q` *(string)* Search query string.
  ///
  /// `lat` *(number)* Geographical latitude, in degrees (from '-90' to '90').
  ///
  /// `long` *(number)* Geographical longitude, in degrees (from '-180' to '180').
  ///
  /// `start_time` *(integer)*
  ///
  /// `end_time` *(integer)*
  ///
  /// `sort` *(integer)* Sort order:
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of photos.
  ///
  /// `count` *(integer)* Number of photos to return., default: 100, max: 1000
  ///
  /// `radius` *(integer)* Radius of search in meters (works very approximately). Available values: '10', '100', '800', '6000', '50000'., default: 5000
  Future<Map> search([Map<String, String> params]) async {
    return _api.request('photos.search', {
      ...?params,
    });
  }
}
