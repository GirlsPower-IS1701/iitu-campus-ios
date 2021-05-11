// import 'dart:async';

// import 'package:campus/locator.dart';
// import 'package:campus/services/api/firebase_auth_api.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/foundation.dart';

// class LogInViewModel extends ChangeNotifier {
//   final _authApi = locator<FirebaseAuthApi>();

//   final _loadingController = StreamController<bool>.broadcast();
//   final _googleLoadingController = StreamController<bool>.broadcast();
//   String _error = '';
//   dynamic _verification;

//   Stream<bool> get loadingStream =>
//       _loadingController.stream.asBroadcastStream();

//   Stream<bool> get googleLoadingStream =>
//       _googleLoadingController.stream.asBroadcastStream();

//   String get error => _error;

//   Future initState() async {
//     _loadingController.sink.add(false);
//   }

 

//   Future<User> signInWithEmailAndPassword(String email, String password) async {
//     _loadingController.sink.add(true);
//     return _authApi
//         .signInWithEmailAndPassword(email: email, password: password)
//         .whenComplete(() {
//       _loadingController.sink.add(false);
//     });
//   }


//   void clearError() {
//     _error = '';
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _loadingController.close();
//     _googleLoadingController.close();
//   }
// }
