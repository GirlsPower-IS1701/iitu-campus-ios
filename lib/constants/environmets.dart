bool get isInDebugMode {

  bool inDebugMode = false;

  assert(inDebugMode = true);

  return inDebugMode;
}

String get baseUrl {
  return isInDebugMode ? 'http://127.0.0.1:8000' : '';
}
