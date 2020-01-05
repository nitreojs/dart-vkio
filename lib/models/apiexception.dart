class APIException implements Exception {
  String cause;
  num code;

  APIException(
    String cause, {
    num code,
  }) {
    this.cause = cause;
    this.code = code;
  }

  String get error => 'APIException #${this.code}: ${this.cause}';
}
