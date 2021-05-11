bool get isInDebugMode {

  bool inDebugMode = false;

  assert(inDebugMode = true);

  return inDebugMode;
}

String get baseUrl {
  return isInDebugMode ? 'http://127.0.0.1/v1/students/:8000' : '';
  //http://3.21.244.168:8000/' : '';
}
