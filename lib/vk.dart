import './models/api.dart';

class VK {
  Map<String, dynamic> options;
  API api;

  VK({String token, String version = '5.103'}) {
    options = {
      'token': token,
      'version': version,
    };

    api = API(this);
  }

  VK.create({String token, String version = '5.103'})
      : this(token: token, version: version);

  @override
  String toString() {
    return 'VK';
  }
}
