import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;

import '../vk.dart';

import 'account.dart';
import 'ads.dart';
import 'apps.dart';
import 'auth.dart';
import 'board.dart';
import 'database.dart';
import 'docs.dart';
import 'fave.dart';
import 'friends.dart';
import 'gifts.dart';
import 'groups.dart';
import 'leads.dart';
import 'likes.dart';
import 'market.dart';
import 'messages.dart';
import 'newsfeed.dart';
import 'notes.dart';
import 'notifications.dart';
import 'orders.dart';
import 'pages.dart';
import 'photos.dart';
import 'polls.dart';
import 'prettycards.dart';
import 'search.dart';
import 'secure.dart';
import 'stats.dart';
import 'status.dart';
import 'storage.dart';
import 'stories.dart';
import 'streaming.dart';
import 'users.dart';
import 'utils.dart';
import 'video.dart';
import 'wall.dart';
import 'widgets.dart';

import 'apiexception.dart';

/// VK API class
class API {
  /// Base API request url
  final String _baseUrl = 'https://api.vk.com/method';

  /// VK class
  VK _vk;

  /// Account class
  Account account;

  /// Ads class
  Ads ads;

  /// Apps class
  Apps apps;

  /// Auth class
  Auth auth;

  /// Board class
  Board board;

  /// Database class
  Database database;

  /// Docs class
  Docs docs;

  /// Fave class
  Fave fave;

  /// Friends class
  Friends friends;

  /// Gifts class
  Gifts gifts;

  /// Groups class
  Groups groups;

  /// Leads class
  Leads leads;

  /// Likes class
  Likes likes;

  /// Market class
  Market market;

  /// Messages class
  Messages messages;

  /// Newsfeed class
  Newsfeed newsfeed;

  /// Notes class
  Notes notes;

  /// Notifications class
  Notifications notifications;

  /// Orders class
  Orders orders;

  /// Pages class
  Pages pages;

  /// Photos class
  Photos photos;

  /// Polls class
  Polls polls;

  /// PrettyCards class
  PrettyCards prettyCards;

  /// Search class
  Search search;

  /// Secure class
  Secure secure;

  /// Stats class
  Stats stats;

  /// Status class
  Status status;

  /// Storage class
  Storage storage;

  /// Stories class
  Stories stories;

  /// Streaming class
  Streaming streaming;

  /// Users class
  Users users;

  /// Utils class
  Utils utils;

  /// Video class
  Video video;

  /// Wall class
  Wall wall;

  /// Widgets class
  Widgets widgets;

  /// API
  API(VK vk) {
    _vk = vk;

    account = Account(this);
    ads = Ads(this);
    apps = Apps(this);
    auth = Auth(this);
    board = Board(this);
    database = Database(this);
    docs = Docs(this);
    fave = Fave(this);
    friends = Friends(this);
    gifts = Gifts(this);
    groups = Groups(this);
    leads = Leads(this);
    likes = Likes(this);
    market = Market(this);
    messages = Messages(this);
    newsfeed = Newsfeed(this);
    notes = Notes(this);
    notifications = Notifications(this);
    orders = Orders(this);
    pages = Pages(this);
    photos = Photos(this);
    polls = Polls(this);
    prettyCards = PrettyCards(this);
    search = Search(this);
    secure = Secure(this);
    stats = Stats(this);
    status = Status(this);
    storage = Storage(this);
    stories = Stories(this);
    streaming = Streaming(this);
    users = Users(this);
    utils = Utils(this);
    video = Video(this);
    wall = Wall(this);
    widgets = Widgets(this);
  }

  @override
  String toString() {
    return 'API';
  }

  Future<Map> request(String method, [Map<String, dynamic> rawParams]) async {
    Map params = {...?rawParams};

    for (var item in params.entries) {
      dynamic value = item.value;

      if (item.value is List) {
        value = item.value.join(',');
      } else if (item.value is int || item.value is double) {
        value = '${item.value}';
      }

      params[item.key] = value;
    }

    if (params['random_id'] == null) {
      params['random_id'] = Random().nextInt(4294967296);
    }

    Map body = <String, dynamic>{
      'access_token': _vk.options['token'],
      'v': _vk.options['version'],
      ...?params,
    };

    http.Response response = await http.post(
      _baseUrl + '/$method',
      body: body,
    );

    Map json = jsonDecode(response.body);

    if (json['error'] != null) {
      Map error = json['error'];

      throw APIException(
        error['error_msg'],
        error['error_code'],
      ).error;
    }

    return json;
  }

  /// Call an API [method] with [params]
  Future<Map> call(String method, [Map<String, dynamic> params]) async {
    return request(method, {
      ...?params,
    });
  }

  /// Execute [code]
  Future<Map> execute(String code) async {
    return call('execute', {
      'code': code,
    });
  }
}
