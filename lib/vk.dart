import './models/api.dart';

class VK {
  Map options;
  API api;

  VK({String token, String version = '5.98'}) {
    options = {
      'token': token,
      'version': version,
    };

    api = API(this);
  }

  VK.create(String token, [String version = '5.98'])
      : this(token: token, version: version);

  String toString() {
    return 'VK';
  }
}
