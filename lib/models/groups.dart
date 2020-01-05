import './api.dart';

/// Groups class
class Groups {
  /// API class
  API _api;

  /// Groups
  Groups(API api) {
    _api = api;
  }

  String toString() {
    return 'Groups';
  }

  /// Params:
  ///
  /// `group_id` *(integer)*
  ///
  /// `title` *(string)*
  ///
  /// `address` *(string)*
  ///
  /// `additional_address` *(string)*
  ///
  /// `country_id` *(integer)*, min: 1
  ///
  /// `city_id` *(integer)*, min: 1
  ///
  /// `metro_id` *(integer)*
  ///
  /// `latitude` *(number)*, min: -90, max: 90
  ///
  /// `longitude` *(number)*, min: -180, max: 180
  ///
  /// `phone` *(string)*
  ///
  /// `work_info_status` *(string)*, default: no_information
  ///
  /// `timetable` *(string)*
  ///
  /// `is_main_address` *(boolean)*
  Future<Map> addAddress([Map<String, dynamic> params]) async {
    return _api.request('groups.addAddress', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `group_id` *(integer)*
  ///
  /// `url` *(string)*
  ///
  /// `title` *(string)*
  ///
  /// `secret_key` *(string)*
  Future<Map> addCallbackServer([Map<String, dynamic> params]) async {
    return _api.request('groups.addCallbackServer', {
      ...?params,
    });
  }

  /// Allows to add a link to the community.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID.
  ///
  /// `link` *(string)* Link URL.
  ///
  /// `text` *(string)* Description text for the link.
  Future<Map> addLink([Map<String, dynamic> params]) async {
    return _api.request('groups.addLink', {
      ...?params,
    });
  }

  /// Allows to approve join request to the community.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID.
  ///
  /// `user_id` *(integer)* User ID.
  Future<Map> approveRequest([Map<String, dynamic> params]) async {
    return _api.request('groups.approveRequest', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `group_id` *(integer)*
  ///
  /// `owner_id` *(integer)*
  ///
  /// `end_date` *(integer)*
  ///
  /// `reason` *(integer)*
  ///
  /// `comment` *(string)*
  ///
  /// `comment_visible` *(boolean)*
  Future<Map> ban([Map<String, dynamic> params]) async {
    return _api.request('groups.ban', {
      ...?params,
    });
  }

  /// Creates a new community.
  ///
  /// Params:
  ///
  /// `title` *(string)* Community title.
  ///
  /// `description` *(string)* Community description (ignored for 'type' = 'public').
  ///
  /// `type` *(string)* Community type. Possible values: *'group' – group,, *'event' – event,, *'public' – public page, default: group
  ///
  /// `public_category` *(integer)* Category ID (for 'type' = 'public' only).
  ///
  /// `subtype` *(integer)* Public page subtype. Possible values: *'1' – place or small business,, *'2' – company, organization or website,, *'3' – famous person or group of people,, *'4' – product or work of art.
  Future<Map> create([Map<String, dynamic> params]) async {
    return _api.request('groups.create', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `group_id` *(integer)*
  ///
  /// `server_id` *(integer)*
  Future<Map> deleteCallbackServer([Map<String, dynamic> params]) async {
    return _api.request('groups.deleteCallbackServer', {
      ...?params,
    });
  }

  /// Allows to delete a link from the community.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID.
  ///
  /// `link_id` *(integer)* Link ID.
  Future<Map> deleteLink([Map<String, dynamic> params]) async {
    return _api.request('groups.deleteLink', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `group_id` *(integer)*
  Future<Map> disableOnline([Map<String, dynamic> params]) async {
    return _api.request('groups.disableOnline', {
      ...?params,
    });
  }

  /// Edits a community.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID.
  ///
  /// `title` *(string)* Community title.
  ///
  /// `description` *(string)* Community description.
  ///
  /// `screen_name` *(string)* Community screen name.
  ///
  /// `access` *(integer)* Community type. Possible values: *'0' – open,, *'1' – closed,, *'2' – private.
  ///
  /// `website` *(string)* Website that will be displayed in the community information field.
  ///
  /// `subject` *(string)* Community subject. Possible values: , *'1' – auto/moto,, *'2' – activity holidays,, *'3' – business,, *'4' – pets,, *'5' – health,, *'6' – dating and communication, , *'7' – games,, *'8' – IT (computers and software),, *'9' – cinema,, *'10' – beauty and fashion,, *'11' – cooking,, *'12' – art and culture,, *'13' – literature,, *'14' – mobile services and internet,, *'15' – music,, *'16' – science and technology,, *'17' – real estate,, *'18' – news and media,, *'19' – security,, *'20' – education,, *'21' – home and renovations,, *'22' – politics,, *'23' – food,, *'24' – industry,, *'25' – travel,, *'26' – work,, *'27' – entertainment,, *'28' – religion,, *'29' – family,, *'30' – sports,, *'31' – insurance,, *'32' – television,, *'33' – goods and services,, *'34' – hobbies,, *'35' – finance,, *'36' – photo,, *'37' – esoterics,, *'38' – electronics and appliances,, *'39' – erotic,, *'40' – humor,, *'41' – society, humanities,, *'42' – design and graphics.
  ///
  /// `email` *(string)* Organizer email (for events).
  ///
  /// `phone` *(string)* Organizer phone number (for events).
  ///
  /// `rss` *(string)* RSS feed address for import (available only to communities with special permission. Contact vk.com/support to get it.
  ///
  /// `event_start_date` *(integer)* Event start date in Unixtime format.
  ///
  /// `event_finish_date` *(integer)* Event finish date in Unixtime format.
  ///
  /// `event_group_id` *(integer)* Organizer community ID (for events only).
  ///
  /// `public_category` *(integer)* Public page category ID.
  ///
  /// `public_subcategory` *(integer)* Public page subcategory ID.
  ///
  /// `public_date` *(string)* Founding date of a company or organization owning the community in "dd.mm.YYYY" format.
  ///
  /// `wall` *(integer)* Wall settings. Possible values: *'0' – disabled,, *'1' – open,, *'2' – limited (groups and events only),, *'3' – closed (groups and events only).
  ///
  /// `topics` *(integer)* Board topics settings. Possbile values: , *'0' – disabled,, *'1' – open,, *'2' – limited (for groups and events only).
  ///
  /// `photos` *(integer)* Photos settings. Possible values: *'0' – disabled,, *'1' – open,, *'2' – limited (for groups and events only).
  ///
  /// `video` *(integer)* Video settings. Possible values: *'0' – disabled,, *'1' – open,, *'2' – limited (for groups and events only).
  ///
  /// `audio` *(integer)* Audio settings. Possible values: *'0' – disabled,, *'1' – open,, *'2' – limited (for groups and events only).
  ///
  /// `links` *(boolean)* Links settings (for public pages only). Possible values: *'0' – disabled,, *'1' – enabled.
  ///
  /// `events` *(boolean)* Events settings (for public pages only). Possible values: *'0' – disabled,, *'1' – enabled.
  ///
  /// `places` *(boolean)* Places settings (for public pages only). Possible values: *'0' – disabled,, *'1' – enabled.
  ///
  /// `contacts` *(boolean)* Contacts settings (for public pages only). Possible values: *'0' – disabled,, *'1' – enabled.
  ///
  /// `docs` *(integer)* Documents settings. Possible values: *'0' – disabled,, *'1' – open,, *'2' – limited (for groups and events only).
  ///
  /// `wiki` *(integer)* Wiki pages settings. Possible values: *'0' – disabled,, *'1' – open,, *'2' – limited (for groups and events only).
  ///
  /// `messages` *(boolean)* Community messages. Possible values: *'0' — disabled,, *'1' — enabled.
  ///
  /// `articles` *(boolean)*
  ///
  /// `addresses` *(boolean)*
  ///
  /// `age_limits` *(integer)* Community age limits. Possible values: *'1' — no limits,, *'2' — 16+,, *'3' — 18+., default: 1
  ///
  /// `market` *(boolean)* Market settings. Possible values: *'0' – disabled,, *'1' – enabled.
  ///
  /// `market_comments` *(boolean)* market comments settings. Possible values: *'0' – disabled,, *'1' – enabled.
  ///
  /// `market_country` *(array)* Market delivery countries.
  ///
  /// `market_city` *(array)* Market delivery cities (if only one country is specified).
  ///
  /// `market_currency` *(integer)* Market currency settings. Possbile values: , *'643' – Russian rubles,, *'980' – Ukrainian hryvnia,, *'398' – Kazakh tenge,, *'978' – Euro,, *'840' – US dollars
  ///
  /// `market_contact` *(integer)* Seller contact for market. Set '0' for community messages.
  ///
  /// `market_wiki` *(integer)* ID of a wiki page with market description.
  ///
  /// `obscene_filter` *(boolean)* Obscene expressions filter in comments. Possible values: , *'0' – disabled,, *'1' – enabled.
  ///
  /// `obscene_stopwords` *(boolean)* Stopwords filter in comments. Possible values: , *'0' – disabled,, *'1' – enabled.
  ///
  /// `obscene_words` *(array)* Keywords for stopwords filter.
  ///
  /// `main_section` *(integer)*
  ///
  /// `secondary_section` *(integer)*
  ///
  /// `country` *(integer)* Country of the community.
  ///
  /// `city` *(integer)* City of the community.
  Future<Map> edit([Map<String, dynamic> params]) async {
    return _api.request('groups.edit', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `group_id` *(integer)*
  ///
  /// `address_id` *(integer)*
  ///
  /// `title` *(string)*
  ///
  /// `address` *(string)*
  ///
  /// `additional_address` *(string)*
  ///
  /// `country_id` *(integer)*
  ///
  /// `city_id` *(integer)*
  ///
  /// `metro_id` *(integer)*
  ///
  /// `latitude` *(number)*, min: -90, max: 90
  ///
  /// `longitude` *(number)*, min: -180, max: 180
  ///
  /// `phone` *(string)*
  ///
  /// `work_info_status` *(string)*
  ///
  /// `timetable` *(string)*
  ///
  /// `is_main_address` *(boolean)*
  Future<Map> editAddress([Map<String, dynamic> params]) async {
    return _api.request('groups.editAddress', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `group_id` *(integer)*
  ///
  /// `server_id` *(integer)*
  ///
  /// `url` *(string)*
  ///
  /// `title` *(string)*
  ///
  /// `secret_key` *(string)*
  Future<Map> editCallbackServer([Map<String, dynamic> params]) async {
    return _api.request('groups.editCallbackServer', {
      ...?params,
    });
  }

  /// Allows to edit a link in the community.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID.
  ///
  /// `link_id` *(integer)* Link ID.
  ///
  /// `text` *(string)* New description text for the link.
  Future<Map> editLink([Map<String, dynamic> params]) async {
    return _api.request('groups.editLink', {
      ...?params,
    });
  }

  /// Allows to add, remove or edit the community manager.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID.
  ///
  /// `user_id` *(integer)* User ID.
  ///
  /// `role` *(string)* Manager role. Possible values: *'moderator',, *'editor',, *'administrator'.
  ///
  /// `is_contact` *(boolean)* '1' — to show the manager in Contacts block of the community.
  ///
  /// `contact_position` *(string)* Position to show in Contacts block.
  ///
  /// `contact_phone` *(string)* Contact phone.
  ///
  /// `contact_email` *(string)* Contact e-mail.
  Future<Map> editManager([Map<String, dynamic> params]) async {
    return _api.request('groups.editManager', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `group_id` *(integer)*
  Future<Map> enableOnline([Map<String, dynamic> params]) async {
    return _api.request('groups.enableOnline', {
      ...?params,
    });
  }

  /// Returns a list of the communities to which a user belongs.
  ///
  /// Params:
  ///
  /// `user_id` *(integer)* User ID.
  ///
  /// `extended` *(boolean)* '1' — to return complete information about a user's communities, '0' — to return a list of community IDs without any additional fields (default),
  ///
  /// `filter` *(array)* Types of communities to return: 'admin' — to return communities administered by the user , 'editor' — to return communities where the user is an administrator or editor, 'moder' — to return communities where the user is an administrator, editor, or moderator, 'groups' — to return only groups, 'publics' — to return only public pages, 'events' — to return only events
  ///
  /// `fields` *(array)* Profile fields to return.
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of communities.
  ///
  /// `count` *(integer)* Number of communities to return., max: 1000
  Future<Map> get([Map<String, dynamic> params]) async {
    return _api.request('groups.get', {
      ...?params,
    });
  }

  /// Returns a list of community addresses.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* ID or screen name of the community.
  ///
  /// `address_ids` *(array)*
  ///
  /// `latitude` *(number)* Latitude of  the user geo position., min: -90, max: 90
  ///
  /// `longitude` *(number)* Longitude of the user geo position., min: -180, max: 180
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of community addresses.
  ///
  /// `count` *(integer)* Number of community addresses to return., default: 10
  ///
  /// `fields` *(array)* Address fields, default: id,title,address,additional_address,country_id,city_id,metro_station_id,latitude,longitude,distance,work_info_status,timetable,phone,time_offset
  Future<Map> getAddresses([Map<String, dynamic> params]) async {
    return _api.request('groups.getAddresses', {
      ...?params,
    });
  }

  /// Returns a list of users on a community blacklist.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID.
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of users.
  ///
  /// `count` *(integer)* Number of users to return., default: 20, max: 200
  ///
  /// `fields` *(array)*
  ///
  /// `owner_id` *(integer)*
  Future<Map> getBanned([Map<String, dynamic> params]) async {
    return _api.request('groups.getBanned', {
      ...?params,
    });
  }

  /// Returns information about communities by their IDs.
  ///
  /// Params:
  ///
  /// `group_ids` *(array)* IDs or screen names of communities.
  ///
  /// `group_id` *(string)* ID or screen name of the community.
  ///
  /// `fields` *(array)* Group fields to return.
  Future<Map> getById([Map<String, dynamic> params]) async {
    return _api.request('groups.getById', {
      ...?params,
    });
  }

  /// Returns Callback API confirmation code for the community.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID.
  Future<Map> getCallbackConfirmationCode([Map<String, dynamic> params]) async {
    return _api.request('groups.getCallbackConfirmationCode', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `group_id` *(integer)*
  ///
  /// `server_ids` *(array)*
  Future<Map> getCallbackServers([Map<String, dynamic> params]) async {
    return _api.request('groups.getCallbackServers', {
      ...?params,
    });
  }

  /// Returns [Callback API](https://vk.com/dev/callback_api) notifications settings.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID.
  ///
  /// `server_id` *(integer)* Server ID.
  Future<Map> getCallbackSettings([Map<String, dynamic> params]) async {
    return _api.request('groups.getCallbackSettings', {
      ...?params,
    });
  }

  /// Returns communities list for a catalog category.
  ///
  /// Params:
  ///
  /// `category_id` *(integer)* Category id received from [groups.getCatalogInfo](https://vk.com/dev/groups.getCatalogInfo).
  ///
  /// `subcategory_id` *(integer)* Subcategory id received from [groups.getCatalogInfo](https://vk.com/dev/groups.getCatalogInfo)., max: 99
  Future<Map> getCatalog([Map<String, dynamic> params]) async {
    return _api.request('groups.getCatalog', {
      ...?params,
    });
  }

  /// Returns categories list for communities catalog
  ///
  /// Params:
  ///
  /// `extended` *(boolean)* 1 – to return communities count and three communities for preview. By default: 0.
  ///
  /// `subcategories` *(boolean)* 1 – to return subcategories info. By default: 0.
  Future<Map> getCatalogInfo([Map<String, dynamic> params]) async {
    return _api.request('groups.getCatalogInfo', {
      ...?params,
    });
  }

  /// Returns invited users list of a community
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Group ID to return invited users for.
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of results.
  ///
  /// `count` *(integer)* Number of results to return., default: 20
  ///
  /// `fields` *(array)* List of additional fields to be returned. Available values: 'sex, bdate, city, country, photo_50, photo_100, photo_200_orig, photo_200, photo_400_orig, photo_max, photo_max_orig, online, online_mobile, lists, domain, has_mobile, contacts, connections, site, education, universities, schools, can_post, can_see_all_posts, can_see_audio, can_write_private_message, status, last_seen, common_count, relation, relatives, counters'.
  ///
  /// `name_case` *(string)* Case for declension of user name and surname. Possible values: *'nom' — nominative (default),, *'gen' — genitive,, *'dat' — dative,, *'acc' — accusative, , *'ins' — instrumental,, *'abl' — prepositional.
  Future<Map> getInvitedUsers([Map<String, dynamic> params]) async {
    return _api.request('groups.getInvitedUsers', {
      ...?params,
    });
  }

  /// Returns a list of invitations to join communities and events.
  ///
  /// Params:
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of invitations.
  ///
  /// `count` *(integer)* Number of invitations to return., default: 20
  ///
  /// `extended` *(boolean)* '1' — to return additional [fields](https://vk.com/dev/fields_groups) for communities..
  Future<Map> getInvites([Map<String, dynamic> params]) async {
    return _api.request('groups.getInvites', {
      ...?params,
    });
  }

  /// Returns the data needed to query a Long Poll server for events
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID
  Future<Map> getLongPollServer([Map<String, dynamic> params]) async {
    return _api.request('groups.getLongPollServer', {
      ...?params,
    });
  }

  /// Returns Long Poll notification settings
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID.
  Future<Map> getLongPollSettings([Map<String, dynamic> params]) async {
    return _api.request('groups.getLongPollSettings', {
      ...?params,
    });
  }

  /// Returns a list of community members.
  ///
  /// Params:
  ///
  /// `group_id` *(string)* ID or screen name of the community.
  ///
  /// `sort` *(string)* Sort order. Available values: 'id_asc', 'id_desc', 'time_asc', 'time_desc'. 'time_asc' and 'time_desc' are availavle only if the method is called by the group's 'moderator'., default: id_asc
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of community members.
  ///
  /// `count` *(integer)* Number of community members to return., default: 1000
  ///
  /// `fields` *(array)* List of additional fields to be returned. Available values: 'sex, bdate, city, country, photo_50, photo_100, photo_200_orig, photo_200, photo_400_orig, photo_max, photo_max_orig, online, online_mobile, lists, domain, has_mobile, contacts, connections, site, education, universities, schools, can_post, can_see_all_posts, can_see_audio, can_write_private_message, status, last_seen, common_count, relation, relatives, counters'.
  ///
  /// `filter` *(string)* *'friends' – only friends in this community will be returned,, *'unsure' – only those who pressed 'I may attend' will be returned (if it's an event).
  Future<Map> getMembers([Map<String, dynamic> params]) async {
    return _api.request('groups.getMembers', {
      ...?params,
    });
  }

  /// Returns a list of requests to the community.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID.
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of results.
  ///
  /// `count` *(integer)* Number of results to return., default: 20, max: 200
  ///
  /// `fields` *(array)* Profile fields to return.
  Future<Map> getRequests([Map<String, dynamic> params]) async {
    return _api.request('groups.getRequests', {
      ...?params,
    });
  }

  /// Returns community settings.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID.
  Future<Map> getSettings([Map<String, dynamic> params]) async {
    return _api.request('groups.getSettings', {
      ...?params,
    });
  }

  /// Params: none
  Future<Map> getTokenPermissions([Map<String, dynamic> params]) async {
    return _api.request('groups.getTokenPermissions', {
      ...?params,
    });
  }

  /// Allows to invite friends to the community.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID.
  ///
  /// `user_id` *(integer)* User ID.
  Future<Map> invite([Map<String, dynamic> params]) async {
    return _api.request('groups.invite', {
      ...?params,
    });
  }

  /// Returns information specifying whether a user is a member of a community.
  ///
  /// Params:
  ///
  /// `group_id` *(string)* ID or screen name of the community.
  ///
  /// `user_id` *(integer)* User ID.
  ///
  /// `user_ids` *(array)* User IDs.
  ///
  /// `extended` *(boolean)* '1' — to return an extended response with additional fields. By default: '0'.
  Future<Map> isMember([Map<String, dynamic> params]) async {
    return _api.request('groups.isMember', {
      ...?params,
    });
  }

  /// With this method you can join the group or public page, and also confirm your participation in an event.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* ID or screen name of the community.
  ///
  /// `not_sure` *(string)* Optional parameter which is taken into account when 'gid' belongs to the event: '1' — Perhaps I will attend, '0' — I will be there for sure (default), ,
  Future<Map> join([Map<String, dynamic> params]) async {
    return _api.request('groups.join', {
      ...?params,
    });
  }

  /// With this method you can leave a group, public page, or event.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* ID or screen name of the community.
  Future<Map> leave([Map<String, dynamic> params]) async {
    return _api.request('groups.leave', {
      ...?params,
    });
  }

  /// Removes a user from the community.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID.
  ///
  /// `user_id` *(integer)* User ID.
  Future<Map> removeUser([Map<String, dynamic> params]) async {
    return _api.request('groups.removeUser', {
      ...?params,
    });
  }

  /// Allows to reorder links in the community.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID.
  ///
  /// `link_id` *(integer)* Link ID.
  ///
  /// `after` *(integer)* ID of the link after which to place the link with 'link_id'.
  Future<Map> reorderLink([Map<String, dynamic> params]) async {
    return _api.request('groups.reorderLink', {
      ...?params,
    });
  }

  /// Returns a list of communities matching the search criteria.
  ///
  /// Params:
  ///
  /// `q` *(string)* Search query string.
  ///
  /// `type` *(string)* Community type. Possible values: 'group, page, event.'
  ///
  /// `country_id` *(integer)* Country ID.
  ///
  /// `city_id` *(integer)* City ID. If this parameter is transmitted, country_id is ignored.
  ///
  /// `future` *(boolean)* '1' — to return only upcoming events. Works with the 'type' = 'event' only.
  ///
  /// `market` *(boolean)* '1' — to return communities with enabled market only.
  ///
  /// `sort` *(integer)* Sort order. Possible values: *'0' — default sorting (similar the full version of the site),, *'1' — by growth speed,, *'2'— by the "day attendance/members number" ratio,, *'3' — by the "Likes number/members number" ratio,, *'4' — by the "comments number/members number" ratio,, *'5' — by the "boards entries number/members number" ratio.
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of results.
  ///
  /// `count` *(integer)* Number of communities to return. "Note that you can not receive more than first thousand of results, regardless of 'count' and 'offset' values.", default: 20, max: 1000
  Future<Map> search([Map<String, dynamic> params]) async {
    return _api.request('groups.search', {
      ...?params,
    });
  }

  /// Allow to set notifications settings for group.
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID.
  ///
  /// `server_id` *(integer)* Server ID.
  ///
  /// `api_version` *(string)*
  ///
  /// `message_new` *(boolean)* A new incoming message has been received ('0' — disabled, '1' — enabled).
  ///
  /// `message_reply` *(boolean)* A new outcoming message has been received ('0' — disabled, '1' — enabled).
  ///
  /// `message_allow` *(boolean)* Allowed messages notifications ('0' — disabled, '1' — enabled).
  ///
  /// `message_deny` *(boolean)* Denied messages notifications ('0' — disabled, '1' — enabled).
  ///
  /// `message_typing_state` *(boolean)*
  ///
  /// `photo_new` *(boolean)* New photos notifications ('0' — disabled, '1' — enabled).
  ///
  /// `audio_new` *(boolean)* New audios notifications ('0' — disabled, '1' — enabled).
  ///
  /// `video_new` *(boolean)* New videos notifications ('0' — disabled, '1' — enabled).
  ///
  /// `wall_reply_new` *(boolean)* New wall replies notifications ('0' — disabled, '1' — enabled).
  ///
  /// `wall_reply_edit` *(boolean)* Wall replies edited notifications ('0' — disabled, '1' — enabled).
  ///
  /// `wall_reply_delete` *(boolean)* A wall comment has been deleted ('0' — disabled, '1' — enabled).
  ///
  /// `wall_reply_restore` *(boolean)* A wall comment has been restored ('0' — disabled, '1' — enabled).
  ///
  /// `wall_post_new` *(boolean)* New wall posts notifications ('0' — disabled, '1' — enabled).
  ///
  /// `wall_repost` *(boolean)* New wall posts notifications ('0' — disabled, '1' — enabled).
  ///
  /// `board_post_new` *(boolean)* New board posts notifications ('0' — disabled, '1' — enabled).
  ///
  /// `board_post_edit` *(boolean)* Board posts edited notifications ('0' — disabled, '1' — enabled).
  ///
  /// `board_post_restore` *(boolean)* Board posts restored notifications ('0' — disabled, '1' — enabled).
  ///
  /// `board_post_delete` *(boolean)* Board posts deleted notifications ('0' — disabled, '1' — enabled).
  ///
  /// `photo_comment_new` *(boolean)* New comment to photo notifications ('0' — disabled, '1' — enabled).
  ///
  /// `photo_comment_edit` *(boolean)* A photo comment has been edited ('0' — disabled, '1' — enabled).
  ///
  /// `photo_comment_delete` *(boolean)* A photo comment has been deleted ('0' — disabled, '1' — enabled).
  ///
  /// `photo_comment_restore` *(boolean)* A photo comment has been restored ('0' — disabled, '1' — enabled).
  ///
  /// `video_comment_new` *(boolean)* New comment to video notifications ('0' — disabled, '1' — enabled).
  ///
  /// `video_comment_edit` *(boolean)* A video comment has been edited ('0' — disabled, '1' — enabled).
  ///
  /// `video_comment_delete` *(boolean)* A video comment has been deleted ('0' — disabled, '1' — enabled).
  ///
  /// `video_comment_restore` *(boolean)* A video comment has been restored ('0' — disabled, '1' — enabled).
  ///
  /// `market_comment_new` *(boolean)* New comment to market item notifications ('0' — disabled, '1' — enabled).
  ///
  /// `market_comment_edit` *(boolean)* A market comment has been edited ('0' — disabled, '1' — enabled).
  ///
  /// `market_comment_delete` *(boolean)* A market comment has been deleted ('0' — disabled, '1' — enabled).
  ///
  /// `market_comment_restore` *(boolean)* A market comment has been restored ('0' — disabled, '1' — enabled).
  ///
  /// `poll_vote_new` *(boolean)* A vote in a public poll has been added ('0' — disabled, '1' — enabled).
  ///
  /// `group_join` *(boolean)* Joined community notifications ('0' — disabled, '1' — enabled).
  ///
  /// `group_leave` *(boolean)* Left community notifications ('0' — disabled, '1' — enabled).
  ///
  /// `group_change_settings` *(boolean)*
  ///
  /// `group_change_photo` *(boolean)*
  ///
  /// `group_officers_edit` *(boolean)*
  ///
  /// `user_block` *(boolean)* User added to community blacklist
  ///
  /// `user_unblock` *(boolean)* User removed from community blacklist
  ///
  /// `lead_forms_new` *(boolean)* New form in lead forms
  Future<Map> setCallbackSettings([Map<String, dynamic> params]) async {
    return _api.request('groups.setCallbackSettings', {
      ...?params,
    });
  }

  /// Sets Long Poll notification settings
  ///
  /// Params:
  ///
  /// `group_id` *(integer)* Community ID.
  ///
  /// `enabled` *(boolean)* Sets whether Long Poll is enabled ('0' — disabled, '1' — enabled).
  ///
  /// `api_version` *(string)*
  ///
  /// `message_new` *(boolean)* A new incoming message has been received ('0' — disabled, '1' — enabled).
  ///
  /// `message_reply` *(boolean)* A new outcoming message has been received ('0' — disabled, '1' — enabled).
  ///
  /// `message_allow` *(boolean)* Allowed messages notifications ('0' — disabled, '1' — enabled).
  ///
  /// `message_deny` *(boolean)* Denied messages notifications ('0' — disabled, '1' — enabled).
  ///
  /// `message_edit` *(boolean)* A message has been edited ('0' — disabled, '1' — enabled).
  ///
  /// `message_typing_state` *(boolean)*
  ///
  /// `photo_new` *(boolean)* New photos notifications ('0' — disabled, '1' — enabled).
  ///
  /// `audio_new` *(boolean)* New audios notifications ('0' — disabled, '1' — enabled).
  ///
  /// `video_new` *(boolean)* New videos notifications ('0' — disabled, '1' — enabled).
  ///
  /// `wall_reply_new` *(boolean)* New wall replies notifications ('0' — disabled, '1' — enabled).
  ///
  /// `wall_reply_edit` *(boolean)* Wall replies edited notifications ('0' — disabled, '1' — enabled).
  ///
  /// `wall_reply_delete` *(boolean)* A wall comment has been deleted ('0' — disabled, '1' — enabled).
  ///
  /// `wall_reply_restore` *(boolean)* A wall comment has been restored ('0' — disabled, '1' — enabled).
  ///
  /// `wall_post_new` *(boolean)* New wall posts notifications ('0' — disabled, '1' — enabled).
  ///
  /// `wall_repost` *(boolean)* New wall posts notifications ('0' — disabled, '1' — enabled).
  ///
  /// `board_post_new` *(boolean)* New board posts notifications ('0' — disabled, '1' — enabled).
  ///
  /// `board_post_edit` *(boolean)* Board posts edited notifications ('0' — disabled, '1' — enabled).
  ///
  /// `board_post_restore` *(boolean)* Board posts restored notifications ('0' — disabled, '1' — enabled).
  ///
  /// `board_post_delete` *(boolean)* Board posts deleted notifications ('0' — disabled, '1' — enabled).
  ///
  /// `photo_comment_new` *(boolean)* New comment to photo notifications ('0' — disabled, '1' — enabled).
  ///
  /// `photo_comment_edit` *(boolean)* A photo comment has been edited ('0' — disabled, '1' — enabled).
  ///
  /// `photo_comment_delete` *(boolean)* A photo comment has been deleted ('0' — disabled, '1' — enabled).
  ///
  /// `photo_comment_restore` *(boolean)* A photo comment has been restored ('0' — disabled, '1' — enabled).
  ///
  /// `video_comment_new` *(boolean)* New comment to video notifications ('0' — disabled, '1' — enabled).
  ///
  /// `video_comment_edit` *(boolean)* A video comment has been edited ('0' — disabled, '1' — enabled).
  ///
  /// `video_comment_delete` *(boolean)* A video comment has been deleted ('0' — disabled, '1' — enabled).
  ///
  /// `video_comment_restore` *(boolean)* A video comment has been restored ('0' — disabled, '1' — enabled).
  ///
  /// `market_comment_new` *(boolean)* New comment to market item notifications ('0' — disabled, '1' — enabled).
  ///
  /// `market_comment_edit` *(boolean)* A market comment has been edited ('0' — disabled, '1' — enabled).
  ///
  /// `market_comment_delete` *(boolean)* A market comment has been deleted ('0' — disabled, '1' — enabled).
  ///
  /// `market_comment_restore` *(boolean)* A market comment has been restored ('0' — disabled, '1' — enabled).
  ///
  /// `poll_vote_new` *(boolean)* A vote in a public poll has been added ('0' — disabled, '1' — enabled).
  ///
  /// `group_join` *(boolean)* Joined community notifications ('0' — disabled, '1' — enabled).
  ///
  /// `group_leave` *(boolean)* Left community notifications ('0' — disabled, '1' — enabled).
  ///
  /// `group_change_settings` *(boolean)*
  ///
  /// `group_change_photo` *(boolean)*
  ///
  /// `group_officers_edit` *(boolean)*
  ///
  /// `user_block` *(boolean)* User added to community blacklist
  ///
  /// `user_unblock` *(boolean)* User removed from community blacklist
  Future<Map> setLongPollSettings([Map<String, dynamic> params]) async {
    return _api.request('groups.setLongPollSettings', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `group_id` *(integer)*
  ///
  /// `owner_id` *(integer)*
  Future<Map> unban([Map<String, dynamic> params]) async {
    return _api.request('groups.unban', {
      ...?params,
    });
  }
}
