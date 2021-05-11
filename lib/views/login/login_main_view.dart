
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  // static Page page() => MaterialPage<void>(child: LoginPage());

  // const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          color: Colors.transparent,
          //Theme.of(context).backgroundColor,
          child: Center(
            child: Container(
              width: 300,
              height: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(' Campus system',
                   style: Theme.of(context).textTheme.headline3.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  ),
                  ),
                  SizedBox(height: 38),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                     LoginForm(),
                  ]),
                ],
              ),
            ),
          ),
        ),
    );
  }
}


class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(
          maxWidth: 300,
          maxHeight: 400,
        ),
        decoration: BoxDecoration(
          color: Colors.transparent,
          //Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: Offset.zero,
              color: Colors.black12,
              blurRadius: 20,
              spreadRadius: 1,
            ),
          ],
        ),
        child:  LoginTabs(),
        //LoginEmailTab(),
    );
  }
}

class LoginTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tabs = [
      'login',
    ];
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              Text(
                'LOGIN',
                style: Theme.of(context).textTheme.headline3.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              //Container(
              //   height: 32,
              //   width: 195,
              //   decoration: BoxDecoration(
              //     color: Color(0xfff9fafa),
              //     borderRadius: BorderRadius.circular(
              //       10.0,
              //     ),
              //   ),
              //   child: TabBar(
              //     isScrollable: true,
              //     indicator: BoxDecoration(
              //         color: Color(0xff566176),
              //         borderRadius: BorderRadius.circular(
              //           10.0,
              //         )),
              //     tabs: [
              //       for (final tab in tabs) Tab(text: tab),
              //     ],
              //     labelColor: Colors.white,
              //     unselectedLabelColor: Color(0xff566176),
              //   ),
              // ),
              SizedBox(
                height: 50,
                child: 
                // TabBarView(
                //   children: [
                    LoginEmailTab(),
                  //],
                //),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LoginEmailTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 24,
        left: 24,
        right: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
                key: const Key('login_email_field'),
                cursorWidth: 1.5,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.only(left: 16, right: 16),
                  labelText: 'email',
                  labelStyle: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF566176),
                  ),
                  //errorText: state.email.invalid ? 'invalid email' : null,
                ),
                // inputFormatters: <TextInputFormatter>[
                //   LengthLimitingTextInputFormatter(100),
                // ],
          ),
          SizedBox(height: 24),
          TextFormField(
                      cursorWidth: 1,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 16, right: 16),
                      ),
                      // inputFormatters: [
                      //   FilteringTextInputFormatter.allow(
                      //       RegExp(r'^[^\xdd\d\s]+')),
                      //   LengthLimitingTextInputFormatter(100),
                      // ],
                      validator: (value) {
                        return (value.isEmpty) ? 'Error' : null;
                      },
                      //initialValue: authority?.name,
                      // onChanged: (name) {
                      //   authoritiesModel.setAuthorityName(name);
                      // },
                    ),

          TextFormField(
                key: const Key('login_password_field'),
                cursorWidth: 1,
                cursorColor: Colors.black,
                //obscureText: state.isPasswordObscure,
                decoration: InputDecoration(
                  // suffixIcon: InkWell(
                  //   onTap: () =>
                  //       context.read<LoginCubit>().togglePasswordObscure(),
                  //   child: state.isPasswordObscure
                  //       ? Icon(Icons.visibility_outlined,
                  //           color: Color(0xff566176))
                  //       : Icon(Icons.visibility_off_outlined,
                  //           color: Color(0xff566176)),
                  // ),
                  labelText: 'password',
                  labelStyle: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF566176),
                  ),
                  //errorText: state.password.invalid ? 'invalid password' : null,
                ),
        ), ],
          ),
    );
  }
}
