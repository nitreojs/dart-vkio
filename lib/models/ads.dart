import './api.dart';

/// Ads class
class Ads {
  /// API class
  API _api;

  /// Ads
  Ads(API api) {
    _api = api;
  }

  String toString() {
    return 'Ads';
  }

  /// Adds managers and/or supervisors to advertising account.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  ///
  /// `data` *(string)* Serialized JSON array of objects that describe added managers. Description of 'user_specification' objects see below.
  Future<Map> addOfficeUsers([Map<String, String> params]) async {
    return _api.request('ads.addOfficeUsers', {
      ...?params,
    });
  }

  /// Allows to check the ad link.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  ///
  /// `link_type` *(string)* Object type: *'community' — community,, *'post' — community post,, *'application' — VK application,, *'video' — video,, *'site' — external site.
  ///
  /// `link_url` *(string)* Object URL.
  ///
  /// `campaign_id` *(integer)* Campaign ID
  Future<Map> checkLink([Map<String, String> params]) async {
    return _api.request('ads.checkLink', {
      ...?params,
    });
  }

  /// Creates ads.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  ///
  /// `data` *(string)* Serialized JSON array of objects that describe created ads. Description of 'ad_specification' objects see below.
  Future<Map> createAds([Map<String, String> params]) async {
    return _api.request('ads.createAds', {
      ...?params,
    });
  }

  /// Creates advertising campaigns.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  ///
  /// `data` *(string)* Serialized JSON array of objects that describe created campaigns. Description of 'campaign_specification' objects see below.
  Future<Map> createCampaigns([Map<String, String> params]) async {
    return _api.request('ads.createCampaigns', {
      ...?params,
    });
  }

  /// Creates clients of an advertising agency.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  ///
  /// `data` *(string)* Serialized JSON array of objects that describe created campaigns. Description of 'client_specification' objects see below.
  Future<Map> createClients([Map<String, String> params]) async {
    return _api.request('ads.createClients', {
      ...?params,
    });
  }

  /// Creates a group to re-target ads for users who visited advertiser's site (viewed information about the product, registered, etc.).
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  ///
  /// `client_id` *(integer)* 'Only for advertising agencies.', ID of the client with the advertising account where the group will be created.
  ///
  /// `name` *(string)* Name of the target group — a string up to 64 characters long.
  ///
  /// `lifetime` *(integer)* 'For groups with auditory created with pixel code only.', , Number of days after that users will be automatically removed from the group. '0' — not to remove users., max: 365
  ///
  /// `target_pixel_id` *(integer)*
  ///
  /// `target_pixel_rules` *(string)*
  Future<Map> createTargetGroup([Map<String, String> params]) async {
    return _api.request('ads.createTargetGroup', {
      ...?params,
    });
  }

  /// Archives ads.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  ///
  /// `ids` *(string)* Serialized JSON array with ad IDs.
  Future<Map> deleteAds([Map<String, String> params]) async {
    return _api.request('ads.deleteAds', {
      ...?params,
    });
  }

  /// Archives advertising campaigns.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  ///
  /// `ids` *(string)* Serialized JSON array with IDs of deleted campaigns.
  Future<Map> deleteCampaigns([Map<String, String> params]) async {
    return _api.request('ads.deleteCampaigns', {
      ...?params,
    });
  }

  /// Archives clients of an advertising agency.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  ///
  /// `ids` *(string)* Serialized JSON array with IDs of deleted clients.
  Future<Map> deleteClients([Map<String, String> params]) async {
    return _api.request('ads.deleteClients', {
      ...?params,
    });
  }

  /// Deletes a retarget group.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  ///
  /// `client_id` *(integer)* 'Only for advertising agencies.' , ID of the client with the advertising account where the group will be created.
  ///
  /// `target_group_id` *(integer)* Group ID.
  Future<Map> deleteTargetGroup([Map<String, String> params]) async {
    return _api.request('ads.deleteTargetGroup', {
      ...?params,
    });
  }

  /// Returns a list of advertising accounts.
  ///
  /// Params: none
  Future<Map> getAccounts([Map<String, String> params]) async {
    return _api.request('ads.getAccounts', {
      ...?params,
    });
  }

  /// Returns number of ads.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  ///
  /// `ad_ids` *(string)* Filter by ads. Serialized JSON array with ad IDs. If the parameter is null, all ads will be shown.
  ///
  /// `campaign_ids` *(string)* Filter by advertising campaigns. Serialized JSON array with campaign IDs. If the parameter is null, ads of all campaigns will be shown.
  ///
  /// `client_id` *(integer)* 'Available and required for advertising agencies.' ID of the client ads are retrieved from.
  ///
  /// `include_deleted` *(boolean)* Flag that specifies whether archived ads shall be shown: *0 — show only active ads,, *1 — show all ads.
  ///
  /// `limit` *(integer)* Limit of number of returned ads. Used only if ad_ids parameter is null, and 'campaign_ids' parameter contains ID of only one campaign.
  ///
  /// `offset` *(integer)* Offset. Used in the same cases as 'limit' parameter.
  Future<Map> getAds([Map<String, String> params]) async {
    return _api.request('ads.getAds', {
      ...?params,
    });
  }

  /// Returns descriptions of ad layouts.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  ///
  /// `ad_ids` *(string)* Filter by ads. Serialized JSON array with ad IDs. If the parameter is null, all ads will be shown.
  ///
  /// `campaign_ids` *(string)* Filter by advertising campaigns. Serialized JSON array with campaign IDs. If the parameter is null, ads of all campaigns will be shown.
  ///
  /// `client_id` *(integer)* 'For advertising agencies.' ID of the client ads are retrieved from.
  ///
  /// `include_deleted` *(boolean)* Flag that specifies whether archived ads shall be shown. *0 — show only active ads,, *1 — show all ads.
  ///
  /// `limit` *(integer)* Limit of number of returned ads. Used only if 'ad_ids' parameter is null, and 'campaign_ids' parameter contains ID of only one campaign.
  ///
  /// `offset` *(integer)* Offset. Used in the same cases as 'limit' parameter.
  Future<Map> getAdsLayout([Map<String, String> params]) async {
    return _api.request('ads.getAdsLayout', {
      ...?params,
    });
  }

  /// Returns ad targeting parameters.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  ///
  /// `ad_ids` *(string)* Filter by ads. Serialized JSON array with ad IDs. If the parameter is null, all ads will be shown.
  ///
  /// `campaign_ids` *(string)* Filter by advertising campaigns. Serialized JSON array with campaign IDs. If the parameter is null, ads of all campaigns will be shown.
  ///
  /// `client_id` *(integer)* 'For advertising agencies.' ID of the client ads are retrieved from.
  ///
  /// `include_deleted` *(boolean)* flag that specifies whether archived ads shall be shown: *0 — show only active ads,, *1 — show all ads.
  ///
  /// `limit` *(integer)* Limit of number of returned ads. Used only if 'ad_ids' parameter is null, and 'campaign_ids' parameter contains ID of only one campaign.
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of results.
  Future<Map> getAdsTargeting([Map<String, String> params]) async {
    return _api.request('ads.getAdsTargeting', {
      ...?params,
    });
  }

  /// Returns current budget of the advertising account.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  Future<Map> getBudget([Map<String, String> params]) async {
    return _api.request('ads.getBudget', {
      ...?params,
    });
  }

  /// Returns a list of campaigns in an advertising account.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  ///
  /// `client_id` *(integer)* 'For advertising agencies'. ID of the client advertising campaigns are retrieved from.
  ///
  /// `include_deleted` *(boolean)* Flag that specifies whether archived ads shall be shown. *0 — show only active campaigns,, *1 — show all campaigns.
  ///
  /// `campaign_ids` *(string)* Filter of advertising campaigns to show. Serialized JSON array with campaign IDs. Only campaigns that exist in 'campaign_ids' and belong to the specified advertising account will be shown. If the parameter is null, all campaigns will be shown.
  Future<Map> getCampaigns([Map<String, String> params]) async {
    return _api.request('ads.getCampaigns', {
      ...?params,
    });
  }

  /// Returns a list of possible ad categories.
  ///
  /// Params:
  ///
  /// `lang` *(string)* Language. The full list of supported languages is [here](https://vk.com/dev/api_requests).
  Future<Map> getCategories([Map<String, String> params]) async {
    return _api.request('ads.getCategories', {
      ...?params,
    });
  }

  /// Returns a list of advertising agency's clients.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  Future<Map> getClients([Map<String, String> params]) async {
    return _api.request('ads.getClients', {
      ...?params,
    });
  }

  /// Returns demographics for ads or campaigns.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  ///
  /// `ids_type` *(string)* Type of requested objects listed in 'ids' parameter: *ad — ads,, *campaign — campaigns.
  ///
  /// `ids` *(string)* IDs requested ads or campaigns, separated with a comma, depending on the value set in 'ids_type'. Maximum 2000 objects.
  ///
  /// `period` *(string)* Data grouping by dates: *day — statistics by days,, *month — statistics by months,, *overall — overall statistics. 'date_from' and 'date_to' parameters set temporary limits.
  ///
  /// `date_from` *(string)* Date to show statistics from. For different value of 'period' different date format is used: *day: YYYY-MM-DD, example: 2011-09-27 — September 27, 2011, **0 — day it was created on,, *month: YYYY-MM, example: 2011-09 — September 2011, **0 — month it was created in,, *overall: 0.
  ///
  /// `date_to` *(string)* Date to show statistics to. For different value of 'period' different date format is used: *day: YYYY-MM-DD, example: 2011-09-27 — September 27, 2011, **0 — current day,, *month: YYYY-MM, example: 2011-09 — September 2011, **0 — current month,, *overall: 0.
  Future<Map> getDemographics([Map<String, String> params]) async {
    return _api.request('ads.getDemographics', {
      ...?params,
    });
  }

  /// Returns information about current state of a counter — number of remaining runs of methods and time to the next counter nulling in seconds.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  Future<Map> getFloodStats([Map<String, String> params]) async {
    return _api.request('ads.getFloodStats', {
      ...?params,
    });
  }

  /// Returns a list of managers and supervisors of advertising account.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  Future<Map> getOfficeUsers([Map<String, String> params]) async {
    return _api.request('ads.getOfficeUsers', {
      ...?params,
    });
  }

  /// Returns detailed statistics of promoted posts reach from campaigns and ads.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  ///
  /// `ids_type` *(string)* Type of requested objects listed in 'ids' parameter: *ad — ads,, *campaign — campaigns.
  ///
  /// `ids` *(string)* IDs requested ads or campaigns, separated with a comma, depending on the value set in 'ids_type'. Maximum 100 objects.
  Future<Map> getPostsReach([Map<String, String> params]) async {
    return _api.request('ads.getPostsReach', {
      ...?params,
    });
  }

  /// Returns a reason of ad rejection for pre-moderation.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  ///
  /// `ad_id` *(integer)* Ad ID.
  Future<Map> getRejectionReason([Map<String, String> params]) async {
    return _api.request('ads.getRejectionReason', {
      ...?params,
    });
  }

  /// Returns statistics of performance indicators for ads, campaigns, clients or the whole account.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  ///
  /// `ids_type` *(string)* Type of requested objects listed in 'ids' parameter: *ad — ads,, *campaign — campaigns,, *client — clients,, *office — account.
  ///
  /// `ids` *(string)* IDs requested ads, campaigns, clients or account, separated with a comma, depending on the value set in 'ids_type'. Maximum 2000 objects.
  ///
  /// `period` *(string)* Data grouping by dates: *day — statistics by days,, *month — statistics by months,, *overall — overall statistics. 'date_from' and 'date_to' parameters set temporary limits.
  ///
  /// `date_from` *(string)* Date to show statistics from. For different value of 'period' different date format is used: *day: YYYY-MM-DD, example: 2011-09-27 — September 27, 2011, **0 — day it was created on,, *month: YYYY-MM, example: 2011-09 — September 2011, **0 — month it was created in,, *overall: 0.
  ///
  /// `date_to` *(string)* Date to show statistics to. For different value of 'period' different date format is used: *day: YYYY-MM-DD, example: 2011-09-27 — September 27, 2011, **0 — current day,, *month: YYYY-MM, example: 2011-09 — September 2011, **0 — current month,, *overall: 0.
  Future<Map> getStatistics([Map<String, String> params]) async {
    return _api.request('ads.getStatistics', {
      ...?params,
    });
  }

  /// Returns a set of auto-suggestions for various targeting parameters.
  ///
  /// Params:
  ///
  /// `section` *(string)* Section, suggestions are retrieved in. Available values: *countries — request of a list of countries. If q is not set or blank, a short list of countries is shown. Otherwise, a full list of countries is shown. *regions — requested list of regions. 'country' parameter is required. *cities — requested list of cities. 'country' parameter is required. *districts — requested list of districts. 'cities' parameter is required. *stations — requested list of subway stations. 'cities' parameter is required. *streets — requested list of streets. 'cities' parameter is required. *schools — requested list of educational organizations. 'cities' parameter is required. *interests — requested list of interests. *positions — requested list of positions (professions). *group_types — requested list of group types. *religions — requested list of religious commitments. *browsers — requested list of browsers and mobile devices.
  ///
  /// `ids` *(string)* Objects IDs separated by commas. If the parameter is passed, 'q, country, cities' should not be passed.
  ///
  /// `q` *(string)* Filter-line of the request (for countries, regions, cities, streets, schools, interests, positions).
  ///
  /// `country` *(integer)* ID of the country objects are searched in.
  ///
  /// `cities` *(string)* IDs of cities where objects are searched in, separated with a comma.
  ///
  /// `lang` *(string)* Language of the returned string values. Supported languages: *ru — Russian,, *ua — Ukrainian,, *en — English.
  Future<Map> getSuggestions([Map<String, String> params]) async {
    return _api.request('ads.getSuggestions', {
      ...?params,
    });
  }

  /// Returns a list of target groups.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  ///
  /// `client_id` *(integer)* 'Only for advertising agencies.', ID of the client with the advertising account where the group will be created.
  ///
  /// `extended` *(boolean)* '1' — to return pixel code.
  Future<Map> getTargetGroups([Map<String, String> params]) async {
    return _api.request('ads.getTargetGroups', {
      ...?params,
    });
  }

  /// Returns the size of targeting audience, and also recommended values for CPC and CPM.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  ///
  /// `client_id` *(integer)*
  ///
  /// `criteria` *(string)* Serialized JSON object that describes targeting parameters. Description of 'criteria' object see below.
  ///
  /// `ad_id` *(integer)* ID of an ad which targeting parameters shall be analyzed.
  ///
  /// `ad_format` *(integer)* Ad format. Possible values: *'1' — image and text,, *'2' — big image,, *'3' — exclusive format,, *'4' — community, square image,, *'7' — special app format,, *'8' — special community format,, *'9' — post in community,, *'10' — app board.
  ///
  /// `ad_platform` *(string)* Platforms to use for ad showing. Possible values: (for 'ad_format' = '1'), *'0' — VK and partner sites,, *'1' — VK only. (for 'ad_format' = '9'), *'all' — all platforms,, *'desktop' — desktop version,, *'mobile' — mobile version and apps.
  ///
  /// `ad_platform_no_wall` *(string)*
  ///
  /// `ad_platform_no_ad_network` *(string)*
  ///
  /// `link_url` *(string)* URL for the advertised object.
  ///
  /// `link_domain` *(string)* Domain of the advertised object.
  Future<Map> getTargetingStats([Map<String, String> params]) async {
    return _api.request('ads.getTargetingStats', {
      ...?params,
    });
  }

  /// Returns URL to upload an ad photo to.
  ///
  /// Params:
  ///
  /// `ad_format` *(integer)* Ad format: *1 — image and text,, *2 — big image,, *3 — exclusive format,, *4 — community, square image,, *7 — special app format.
  ///
  /// `icon` *(integer)*
  Future<Map> getUploadURL([Map<String, String> params]) async {
    return _api.request('ads.getUploadURL', {
      ...?params,
    });
  }

  /// Returns URL to upload an ad video to.
  ///
  /// Params: none
  Future<Map> getVideoUploadURL([Map<String, String> params]) async {
    return _api.request('ads.getVideoUploadURL', {
      ...?params,
    });
  }

  /// Imports a list of advertiser's contacts to count VK registered users against the target group.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  ///
  /// `client_id` *(integer)* 'Only for advertising agencies.' , ID of the client with the advertising account where the group will be created.
  ///
  /// `target_group_id` *(integer)* Target group ID.
  ///
  /// `contacts` *(string)* List of phone numbers, emails or user IDs separated with a comma.
  Future<Map> importTargetContacts([Map<String, String> params]) async {
    return _api.request('ads.importTargetContacts', {
      ...?params,
    });
  }

  /// Removes managers and/or supervisors from advertising account.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  ///
  /// `ids` *(string)* Serialized JSON array with IDs of deleted managers.
  Future<Map> removeOfficeUsers([Map<String, String> params]) async {
    return _api.request('ads.removeOfficeUsers', {
      ...?params,
    });
  }

  /// Edits ads.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  ///
  /// `data` *(string)* Serialized JSON array of objects that describe changes in ads. Description of 'ad_edit_specification' objects see below.
  Future<Map> updateAds([Map<String, String> params]) async {
    return _api.request('ads.updateAds', {
      ...?params,
    });
  }

  /// Edits advertising campaigns.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  ///
  /// `data` *(string)* Serialized JSON array of objects that describe changes in campaigns. Description of 'campaign_mod' objects see below.
  Future<Map> updateCampaigns([Map<String, String> params]) async {
    return _api.request('ads.updateCampaigns', {
      ...?params,
    });
  }

  /// Edits clients of an advertising agency.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  ///
  /// `data` *(string)* Serialized JSON array of objects that describe changes in clients. Description of 'client_mod' objects see below.
  Future<Map> updateClients([Map<String, String> params]) async {
    return _api.request('ads.updateClients', {
      ...?params,
    });
  }

  /// Edits a retarget group.
  ///
  /// Params:
  ///
  /// `account_id` *(integer)* Advertising account ID.
  ///
  /// `client_id` *(integer)* 'Only for advertising agencies.' , ID of the client with the advertising account where the group will be created.
  ///
  /// `target_group_id` *(integer)* Group ID.
  ///
  /// `name` *(string)* New name of the target group — a string up to 64 characters long.
  ///
  /// `domain` *(string)* Domain of the site where user accounting code will be placed.
  ///
  /// `lifetime` *(integer)* 'Only for the groups that get audience from sites with user accounting code.', Time in days when users added to a retarget group will be automatically excluded from it. '0' – automatic exclusion is off., max: 365
  ///
  /// `target_pixel_id` *(integer)*
  ///
  /// `target_pixel_rules` *(string)*
  Future<Map> updateTargetGroup([Map<String, String> params]) async {
    return _api.request('ads.updateTargetGroup', {
      ...?params,
    });
  }
}
