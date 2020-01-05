class APIException implements Exception {
  String cause;
  num code;

  APIException(
    String cause, {
    num code,
  }) {
    cause = cause;
    code = code;
  }

  String get error => 'APIException #${code}: ${cause}';
}
