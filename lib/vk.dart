import 'models/api.dart';
import 'models/authorization.dart';

import 'types.dart';

class VK {
  List<String> _languages = [
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

  VK({
    String token,
    String version = '5.103',
    LanguageType language = LanguageType.EN,
  }) {
    options = {
      'token': token,
      'version': version,
      'lang': '${_languages[language.index]}',
    };

    api = API(this);
    authorization = Authorization(this);
  }

  VK.create({
    String token,
    String version = '5.103',
    LanguageType language = LanguageType.EN,
  }) : this(
          token: token,
          version: version,
          language: language,
        );

  @override
  String toString() {
    return 'VK';
  }
}
