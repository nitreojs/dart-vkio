import 'models/api.dart';
import 'models/authorization.dart';
import 'models/updates.dart';

import 'types.dart';

class VK {
  final List<String> _languages = [
    'ru',
    'uk',
    'be',
    'en',
    'es',
    'fi',
    'de',
    'it',
  ];

  Map<String, dynamic> options;
  API api;
  Authorization authorization;
  Updates updates;

  VK({
    String token,
    String version = '5.103',
    LanguageType language = LanguageType.EN,
    Duration pollingWait = const Duration(seconds: 1),
    int pollingAttempts = 3,
  }) {
    options = {
      'token': token,
      'version': version,
      'lang': '${_languages[language.index]}',
      'pollingWait': pollingWait,
      'pollingAttempts': pollingAttempts,
    };

    api = API(this);
    authorization = Authorization(this);
    updates = Updates(this);
  }

  @override
  String toString() {
    return 'VK';
  }
}
