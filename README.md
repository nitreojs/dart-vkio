# vkio v1.2.0

A package which allows you to access to the [VK API](https://vk.com/dev).

## Features

* 100% coverage of the VK API

## Usage

```dart
import 'package:vkio/vk.dart';

main() {
  VK vk = VK('a35e27fbb06d242fa72551433d2da1607035f6cdba1244cee86a3087bdfd32d54b8d1b6e6486c14c0ebe6');

  vk.api.messages.send({
    'user_id': 1,
    'message': 'Test',
  }).then((result) {
    print(result['response']);
  });
}
```
