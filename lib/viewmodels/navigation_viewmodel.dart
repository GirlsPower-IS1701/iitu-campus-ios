import 'package:firebase_auth/firebase_auth.dart';
import 'package:campus/datamodels/user/system_user.dart';
import 'package:flutter/material.dart';
import 'package:campus/locator.dart';
import 'package:campus/services/navigation_service.dart';

class NavigationViewModel extends ChangeNotifier {
  final _navigationService = locator<NavigationService>();

  void navigateTo(
    String route, [
    Map<String, String> queryParams,
  ]) {
    _navigationService.navigateTo(route, queryParams);
    notifyListeners();
  }

  void goBack() {
    _navigationService.goBack();
  }

  Future signOut() {
    return _navigationService.signOut();
  }

  bool isCurrentRouteName(String routeName) {
    return _navigationService.currentRouteName == routeName;
  }

  User get currentUser => _navigationService.currentUser;

  Future<SystemUser> getSystemUser() => _navigationService.getSystemUser();

  Future refresh() async {
    await _navigationService.refreshUser();
    notifyListeners();
  }

}
