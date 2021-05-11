// import 'dart:async';
// import 'package:campus/locator.dart';
// import 'package:campus/services/api/firebase_auth_api.dart';
// import 'package:campus/services/api/users_api.dart';
// import 'package:campus/datamodels/user/system_user.dart';
// import 'package:campus/routing/route_names.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';


// class NavigationService {
//   final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
//   final _auth = locator<FirebaseAuthApi>();
//   final _usersApi = locator<UsersApi>();

//   SystemUser _systemUser;

//   NavigationService() {
//     _auth.authStateChanges.listen((user) async {
//       if (user != null || _auth.currentUser != null) {
//         navigateToLastPage();
//       } else {
//         navigateTo(LogInRoute);
//       }
//     });
//   }

//   String currentRouteName = LogInRoute;
//   String lastRouteName = IndividualStudyPlanRoute;

//   User get currentUser => _auth.currentUser;

//   Future<SystemUser> getSystemUser() async {
//     if (_systemUser != null) {
//       return _systemUser;
//     }
//     _systemUser = await refreshUser();
//     return _systemUser;
//   }

//   Future<SystemUser> refreshUser() async {
//     final token = await _auth.currentUser?.getIdToken();
//     _systemUser = await _usersApi.getCurrentUser(token: token);
//     return _systemUser;
//   }

//   Future<dynamic> navigateTo(
//     String routeName, [
//     Map<String, String> queryParams,
//   ]) {
//     if (queryParams != null) {
//       routeName = Uri(path: routeName, queryParameters: queryParams).toString();
//     }
//     return navigatorKey.currentState?.pushNamed(routeName);
//   }

//   Future<dynamic> navigateToLastPage() {
//     return navigatorKey.currentState?.pushNamed(lastRouteName);
//   }

//   bool goBack() {
//     if (!navigatorKey.currentState.canPop()) {
//       return false;
//     }
//     navigatorKey.currentState.pop();
//     return true;
//   }

//   Future signOut() {
//     return _auth.signOut();
//   }
// }
