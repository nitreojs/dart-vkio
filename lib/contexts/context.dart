class Context {
  final String _type;

  Context(String type) : _type = type;

  bool isType(String type) => _type == type;
}
