import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:campus/viewmodels/login_viewmodel.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool hidePassword = true;
  bool isApiCallProcess = false;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  SignInViewModel signInViewModel;
    final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
    signInViewModel = new SignInViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Theme.of(context).hintColor.withOpacity(0.2),
                          offset: Offset(0, 10),
                          blurRadius: 20)
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 24, right: 24, top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('User logo',
                    style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                    ),
                    ),
                     ),  
                     SizedBox(height: 40),
                      Container(padding: EdgeInsets.all(24),
            child: DottedBorder(
              color: Color(0xffC2C5D6),
              borderType: BorderType.Circle,
              strokeWidth: 1.0,
              dashPattern: [4, 4],
              radius: Radius.circular(8.0),
              child: Container(
                height: 112,
                width: 112,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        color: Color(0xfffafafa),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        // children: [
                        //   Icon(
                        //     Icons.add_a_photo
                        //     // color: Color(0xff566176),
                        //     // height: 18.0,
                        //     // width: 18.0,
                        //   ),
                        // ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // SizedBox(height: 40),
          // Container(height: 300,
          
          // color: Colors.white)
          SizedBox(height: 40),
          Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Theme.of(context).hintColor.withOpacity(0.2),
                          offset: Offset(0, 10),
                          blurRadius: 20)
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 24, right: 24, top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('User logo',
                    style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                    ),
                    ),
                     ),  
                     SizedBox(height: 40),
                      Container(padding: EdgeInsets.all(24),
            child: DottedBorder(
              color: Color(0xffC2C5D6),
              borderType: BorderType.Circle,
              strokeWidth: 1.0,
              dashPattern: [4, 4],
              radius: Radius.circular(8.0),
              child: Container(
                height: 112,
                width: 112,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        color: Color(0xfffafafa),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        // children: [
                        //   Icon(
                        //     Icons.add_a_photo
                        //     // color: Color(0xff566176),
                        //     // height: 18.0,
                        //     // width: 18.0,
                        //   ),
                        // ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
              ],
            ),
          ],
        ),
      ),
    );
  }


}