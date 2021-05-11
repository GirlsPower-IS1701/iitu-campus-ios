// import 'dart:async';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/foundation.dart' show kIsWeb;
// import 'package:flutter/foundation.dart';

// class FirebaseAuthApi {
//   FirebaseAuth _firebaseAuth;

//   FirebaseAuthApi({
//     FirebaseAuth firebaseAuth,
//   }) {
//     this._firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;
//     if (kIsWeb) {
//       _firebaseAuth.setPersistence(Persistence.SESSION);
//     }
//   }

//   Stream<User> get authStateChanges => _firebaseAuth.authStateChanges();

//   Stream<User> get idTokenChanges => _firebaseAuth.idTokenChanges();

//   Future<User> signInWithEmailAndPassword({
//     @required String email,
//     @required String password,
//   }) async {
//     final authResult = await _firebaseAuth.signInWithEmailAndPassword(
//       email: email,
//       password: password,
//     );
//     return authResult.user;
//   }

//   bool get isSignedIn {
//     return _firebaseAuth.currentUser != null;
//   }

//   Future signOut() async {
//     return _firebaseAuth.signOut();
//   }

//   User get currentUser {
//     return _firebaseAuth.currentUser;
//   }
// }
