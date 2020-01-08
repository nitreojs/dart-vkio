# vkio v1.3.1

A package which allows you to access to the [VK API](https://vk.com/dev).

## Features

* 100% coverage of the VK API

## Usage

```dart
import 'package:vkio/types.dart' show LanguageType;
import 'package:vkio/vk.dart';

Future<void> main() async {
  VK vk = VK(
    token: 'a35e27fbb06d242fa72551433d2da1607035f6cdba1244cee86a3087bdfd32d54b8d1b6e6486c14c0ebe6',
    language: LanguageType.EN,
  );

  var response = await vk.api.messages.send({
    'user_id': 1,
    'message': 'Test message',
  });

  print(response);
}
```
