import 'package:campus/locator.dart';
import 'package:campus/theme.dart';
import 'package:campus/viewmodels/navigation_viewmodel.dart';
import 'package:campus/views/login/login_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:campus/routing/router.dart';
import 'package:campus/services/navigation_service.dart';
import 'package:provider/provider.dart';
//import 'package:firebase_core/firebase_core.dart';

void main() {
  setupLocator();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      //navigatorKey: mainNavigatorKey,
      title: 'Campus',
      theme: ThemeData(

          backgroundColor: Colors.white,
          primaryColor: Colors.white,
          fontFamily: 'Segoe UI',
          cursorColor: Colors.black,
          textTheme: TextTheme(
            headline: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            title: TextStyle(fontSize: 17.0, fontStyle: FontStyle.italic),
            body1: TextStyle(fontSize: 14.0),
          ),

          inputDecorationTheme: InputDecorationTheme(
            contentPadding: EdgeInsets.only(left: 2, bottom: 13.8),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            )
          ),

          unselectedWidgetColor: Color(0xFFf47920),
          toggleableActiveColor: Color(0xFFf47920),
      ),
      home: 
      //Container(color: Colors.red),
      LoginPage(),

      debugShowCheckedModeBanner: false
    );
  }
}