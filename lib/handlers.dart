import 'contexts/main.dart';

typedef OnNewMessageHandler = Future<dynamic> Function(MessageContext context);
typedef OnEditMessageHandler = Future<dynamic> Function(MessageEditContext context);
typedef OnReplyMessageHandler = Future<dynamic> Function(MessageReplyContext context);
typedef OnAllowMessageHandler = Future<dynamic> Function(MessageAllowContext context);
typedef OnDenyMessageHandler = Future<dynamic> Function(MessageDenyContext context);
