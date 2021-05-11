// import 'package:campus/viewmodels/navigation_viewmodel.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'dart:convert';
// import 'package:crypto/crypto.dart';

// class NavigationDrawerHeader extends StatelessWidget {
//   const NavigationDrawerHeader({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final model = context.watch<NavigationViewModel>();

//     // final email = model.currentUser?.email ?? '';
//     // final login =
//     //     model.currentUser?.email ?? model.currentUser?.phoneNumber ?? '';
//     // final emailHash = md5.convert(utf8.encode(email)).toString();

//     return Container(
//       height: 250,
//       alignment: Alignment.center,
//       child: Column(
//         children: <Widget>[
//           Padding(
//             padding: EdgeInsets.only(top: 50),
//             child: Container(
//               height: 90,
//               width: 90,
//               decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.white70,
//                   // image: new DecorationImage(
//                   //   fit: BoxFit.fill,
//                   //   image: NetworkImage(
//                   //     'https://s.gravatar.com/avatar/$emailHash?s=120',
//                   //   ),
//                   // ),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Theme.of(context).accentColor,
//                       offset: const Offset(2.0, 2.0),
//                       blurRadius: 5.0,
//                       spreadRadius: 3.0,
//                     ),
//                   ]),
//             ),
//           ),
//           SizedBox(height: 15),
//           Text(
//             'Ivan Ivanov',
//             //model.currentUser?.displayName ?? '',
//             style: Theme.of(context).textTheme.headline6,
//           ),
//           SizedBox(height: 5),
//           Text(
//             '23944',
//             //login,
//             style: Theme.of(context).accentTextTheme.subtitle2,
//           ),
//         ],
//       ),
//     );
//   }
// }
