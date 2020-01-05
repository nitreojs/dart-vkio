import 'package:vkio/vk.dart';

VK vk = VK(
  token: 'a35e27fbb06d242fa72551433d2da1607035f6cdba1244cee86a3087bdfd32d54b8d1b6e6486c14c0ebe6',
  version: '5.103',
);

Future<void> main() async {
  var response = await vk.api.groups.getById();

  print(response);
}
