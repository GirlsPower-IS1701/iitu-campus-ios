bool get isInDebugMode {

  bool inDebugMode = false;

  assert(inDebugMode = true);

  return inDebugMode;
}

String get baseUrl {
  return isInDebugMode ? 'http://3.21.244.168:8000/' : '';
}
