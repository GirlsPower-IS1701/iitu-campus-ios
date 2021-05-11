
//import 'package:campus/widgets/button/loading_material_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:loading_animations/loading_animations.dart';
import 'package:provider/provider.dart';

class SignInView extends StatelessWidget {
  //const SignInView({Key key}) : super(key: key);

//   @override
//   _SignInViewState createState() => _SignInViewState(model: SignInViewModel());
// }

// class _SignInViewState extends State<SignInView> {
//   _SignInViewState({
//     @required this.model,
//   });

//   final SignInViewModel model;

//   @override
//   void initState() {
//     super.initState();
//     model.initState();
//   }

  @override
  Widget build(BuildContext context) {
    return 
    // ChangeNotifierProvider.value(f
    //   value: model,
    //   child: 
      Center(
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          constraints: BoxConstraints(
            maxWidth: 400,
            maxHeight: 400,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(20),
          
          ),
          child: ClipRect(
            clipBehavior: Clip.hardEdge,
            child: Column(
              children: [
                Expanded(child: SignInTabsView()),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: 1,
                          color: Colors.grey[400],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: 1,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}

class SignInTabsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tabs = [
      'email'
    ];

    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Text(
            'Login to the system',
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),
        body:  SignInEmailView(),
      
      ),
    );
  }
}

class SignInEmailView extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //final model = context.watch<SignInViewModel>();
    return Padding(
      padding: const EdgeInsets.only(
        top: 24,
        left: 24,
        right: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Text('email'),
          // SizedBox(height: 8),
          // TextFormField(
          //   cursorWidth: 1,
          //   cursorColor: Colors.black,
          //   controller: emailController,
          //   decoration: InputDecoration(
          //     contentPadding: EdgeInsets.only(left: 16, right: 16),
          //   ),
          //   validator: (value) {
          //     return (value.isEmpty) ? 'Error' : null;
          //   },
          //   inputFormatters: <TextInputFormatter>[
          //     LengthLimitingTextInputFormatter(100),
          //   ],
          // ),
          TextFormField(
                key: const Key('login_email_field'),
                cursorWidth: 1.5,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  fillColor: Colors.red,
                  contentPadding: EdgeInsets.only(left: 16, right: 16),
                  labelText: 'email',
                  labelStyle: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF566176),
                  ),
                  //errorText: state.email.invalid ? 'invalid email' : null,
                ),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(100),
                ],
          ),
          SizedBox(height: 20),
          TextFormField(
                key: const Key('login_email_field'),
                cursorWidth: 1.5,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  fillColor: Colors.red,
                  contentPadding: EdgeInsets.only(left: 16, right: 16),
                  labelText: 'password',
                  labelStyle: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF566176),
                  ),
                  //errorText: state.email.invalid ? 'invalid email' : null,
                ),
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(100),
                ],
          ),
              
          SizedBox(height: 26),
          // Center(
          //   child: Container(
          //     width: 205,
          //     height: 38,
          //     child: StreamProvider.value(
          //       child: LoadingMaterialButton(
          //         color: Color(0xff797efa),
          //         loadingColor: Colors.white,
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(3),
          //         ),
          //         onPressed: () async {
          //           try {
          //             final email = emailController.text;
          //             final password = passwordController.text;
          //             // await model.signInWithEmailAndPassword(email, password);
          //             // final navigation = context.read<NavigationViewModel>();
          //             // navigation.navigateTo(PlaylistsRoute);
          //           } catch (error) {
          //             showDialog(
          //                 context: context,
          //                 builder: (BuildContext context) {
          //                   return AlertDialog(
          //                     title: Text("Error"),
          //                     content: Text(error.message),
          //                     actions: [
          //                       FlatButton(
          //                         child: Text("Ok"),
          //                         onPressed: () {
          //                           Navigator.of(context).pop();
          //                         },
          //                       )
          //                     ],
          //                   );
          //                 });
          //           }
          //         },
          //         child: Padding(
          //           padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          //           child: Center(
          //             child: Text(
          //               'LOGIN',
          //               style: Theme.of(context).primaryTextTheme.subtitle2,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

