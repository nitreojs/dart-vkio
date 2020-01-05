import 'dart:convert';
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
  String _baseUrl = 'https://api.vk.com/method';

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
    this._vk = vk;

    this.account = new Account(this);
    this.ads = new Ads(this);
    this.apps = new Apps(this);
    this.auth = new Auth(this);
    this.board = new Board(this);
    this.database = new Database(this);
    this.docs = new Docs(this);
    this.fave = new Fave(this);
    this.friends = new Friends(this);
    this.gifts = new Gifts(this);
    this.groups = new Groups(this);
    this.leads = new Leads(this);
    this.likes = new Likes(this);
    this.market = new Market(this);
    this.messages = new Messages(this);
    this.newsfeed = new Newsfeed(this);
    this.notes = new Notes(this);
    this.notifications = new Notifications(this);
    this.orders = new Orders(this);
    this.pages = new Pages(this);
    this.photos = new Photos(this);
    this.polls = new Polls(this);
    this.prettyCards = new PrettyCards(this);
    this.search = new Search(this);
    this.secure = new Secure(this);
    this.stats = new Stats(this);
    this.status = new Status(this);
    this.storage = new Storage(this);
    this.stories = new Stories(this);
    this.streaming = new Streaming(this);
    this.users = new Users(this);
    this.utils = new Utils(this);
    this.video = new Video(this);
    this.wall = new Wall(this);
    this.widgets = new Widgets(this);
  }

  toString() {
    return 'API';
  }

  Future<Map> request(String method, [Map<String, String> params]) async {
    Map body = <String, String>{
      'access_token': this._vk.options['token'],
      'v': this._vk.options['version'],
      ...?params,
    };

    http.Response response = await http.post(
      this._baseUrl + '/$method',
      body: body,
    );

    Map json = jsonDecode(response.body);

    if (json['error'] != null) {
      Map error = json['error'];

      throw new APIException(
        error['error_msg'],
        code: error['error_code'],
      ).error;
    }

    return json;
  }

  /// Call an API [method] with [params]
  Future<Map> call(String method, [Map<String, String> params]) async {
    return this.request(method, {
      ...?params,
    });
  }

  /// Execute [code]
  Future<Map> execute(String code) async {
    return this.call('execute', {
      'code': code,
    });
  }
}
