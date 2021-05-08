import 'package:flutter/material.dart';

class RootDrawer {
  static DrawerControllerState of(BuildContext context) {
    final DrawerControllerState drawerControllerState =
        context.findRootAncestorStateOfType();
    return drawerControllerState;
  }
  
  static close(BuildContext context) {
    final drawer = RootDrawer.of(context);
    if (drawer != null) {
      drawer.close();
    }
  }
}
