class APIException implements Exception {
  String cause;
  int code;

  APIException(this.cause, this.code);

  String get error => 'APIException #$code: $cause';
}
