import './models/api.dart';
// import './models/updates.dart';

class VK {
  Map options;
  API api;
  // Updates updates;

  VK({String token, String version = '5.98'}) {
    options = {
      'token': token,
      'version': version,
    };

    api = new API(this);
    // updates = new Updates(this);
  }

  VK.create(String token, [String version = '5.98'])
      : this(token: token, version: version);

  toString() {
    return 'VK';
  }
}
