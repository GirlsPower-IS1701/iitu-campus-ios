// import 'package:campus/routing/route_names.dart';
// import 'package:campus/viewmodels/navigation_viewmodel.dart';
// import 'package:campus/widgets/nav_bar/navbar_item.dart';
// import 'package:campus/widgets/navbar_drawer/navbar_drawer_header.dart';
// import 'package:campus/datamodels/user/system_user.dart';
// import 'package:campus/widgets/navbar_drawer/root_drawer.dart';
// import 'package:flutter/material.dart';
// import 'package:mdi/mdi.dart';
// import 'package:outline_material_icons/outline_material_icons.dart';
// import 'package:provider/provider.dart';

// class NavigationDrawer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final model = Provider.of<NavigationViewModel>(context);

//     return FutureBuilder<SystemUser>(
//         future: model.getSystemUser(),
//         builder: (context, snapshot) {
//           if (!snapshot.hasData) {
//             return Container(
//               width: 260,
//               height: MediaQuery.of(context).size.height,
//               decoration: BoxDecoration(
//                 color: Theme.of(context).primaryColor,
//                 border: Border(
//                   right: BorderSide(
//                     width: 1.5,
//                     color: Theme.of(context).backgroundColor,
//                   ),
//                 ),
//               ),
//             );
//           }
//           return Container(
//             width: 260,
//             height: MediaQuery.of(context).size.height,
//             decoration: BoxDecoration(
//               color: Theme.of(context).primaryColor,
//               border: Border(
//                 right: BorderSide(
//                   width: 1.5,
//                   color: Theme.of(context).backgroundColor,
//                 ),
//               ),
//             ),
//             child: SingleChildScrollView(
//               child: Column(
//                 children: <Widget>[
//                   NavigationDrawerHeader(),
//                   // NavBarItem(
//                   //   S.of(context).home,
//                   //   icon: Mdi.homeCircleOutline,
//                   //   selected: model.isCurrentRouteName(HomeRoute),
//                   //   onTap: () {
//                   //     model.navigateTo(HomeRoute);
//                   //     RootDrawer.close(context);
//                   //   },
//                   // ),
//                   NavBarItem(
//                     'Individual study plan',
//                     icon: Mdi.stickerCircleOutline,
//                     selected: model.isCurrentRouteName(IndividualStudyPlanRoute),
//                     onTap: () {
//                       model.navigateTo(IndividualStudyPlanRoute);
//                       RootDrawer.close(context);
//                     },
//                   ),
//                   NavBarItem(
//                     'Academic calendar',
//                     icon: Mdi.stickerCircleOutline,
//                     selected: model.isCurrentRouteName(AcademicCalendarRoute),
//                     onTap: () {
//                       model.navigateTo(AcademicCalendarRoute);
//                       RootDrawer.close(context);
//                     },
//                   ),
//                   NavBarItem(
//                     'Certificates',
//                     icon: OMIcons.playCircleOutline,
//                     selected: model.isCurrentRouteName(CertificatesRoute),
//                     onTap: () {
//                       model.navigateTo(CertificatesRoute);
//                       RootDrawer.close(context);
//                     },
//                   ),
//                   NavBarItem(
//                     'Schedule',
//                     icon: OMIcons.supervisedUserCircle,
//                     selected: model.isCurrentRouteName(ScheduleRoute),
//                     onTap: () {
//                       model.navigateTo(ScheduleRoute);
//                       RootDrawer.close(context);
//                     },
//                   ),
//                   NavBarItem(
//                     'Transcripts',
//                     icon: OMIcons.history,
//                     selected: model.isCurrentRouteName(TranscriptsRoute),
//                     onTap: () {
//                       model.navigateTo(TranscriptsRoute);
//                       RootDrawer.close(context);
//                     },
//                   ),
//                   NavBarItem(
//                     'Chat with adviser',
//                     icon: OMIcons.settings,
//                     selected: model.isCurrentRouteName(ChatRoute),
//                     onTap: () {
//                       model.navigateTo(ChatRoute);
//                       RootDrawer.close(context);
//                     },
//                   ),
//                   NavBarItem(
//                     'Profile',
//                     icon: OMIcons.settings,
//                     selected: model.isCurrentRouteName(ProfileRoute),
//                     onTap: () {
//                       model.navigateTo(ProfileRoute);
//                       RootDrawer.close(context);
//                     },
//                   // SizedBox(height: 30),
//                   // NavBarItem(
//                   //   S.of(context).signOut,
//                   //   icon: Icons.exit_to_app,
//                   //   selected: false,
//                   //   onTap: () async {
//                   //     RootDrawer.close(context);
//                   //     await model.signOut();
//                   //   },
//                   ),
//                 ],
//               ),
//             ),
//           );
//         });
//   }
// }
