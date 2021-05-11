// import 'package:campus/routing/route_names.dart';
// import 'package:campus/services/navigation_service.dart';
// import 'package:campus/locator.dart';
// import 'package:campus/views/login/login_view.dart';
// import 'package:campus/services/api/firebase_auth_api.dart';

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:page_transition/page_transition.dart';


//  Route<dynamic> generateRoute(RouteSettings settings) {
//   final navigationService = locator.get<NavigationService>();
//   final auth = locator.get<FirebaseAuthApi>();

//   final routingData = settings.name.getRoutingData; // Get the routing Data

//   if (!auth.isSignedIn && routingData.route != LogInRoute) {
//     navigationService.currentRouteName = LogInRoute;
//     navigationService.lastRouteName = routingData.route;
//     return _getPageRoute(LogInView(), settings);
//   }

//   switch (routingData.route) {
//     // Switch on the path from the data
//     case LogInRoute:
//       navigationService.currentRouteName = LogInRoute;
//       return _getPageRoute(LogInView(), settings);
//     // case HomeRoute:
//     //   navigationService.currentRouteName = HomeRoute;
//     //   navigationService.lastRouteName = HomeRoute;
//     //   return _getPageRoute(HomeView(), settings);
//     // case ProfileRoute:
//     //   navigationService.currentRouteName = ProfileRoute;
//     //   navigationService.lastRouteName = ProfileRoute;
//     //   return _getPageRoute(ProfileView(), settings);
//     // case ContentsRoute:
//     //   navigationService.currentRouteName = ContentsRoute;
//     //   navigationService.lastRouteName = ContentsRoute;
//     //   return _getPageRoute(ContentsView(), settings);
//     // case PartnersRoute:
//     //   navigationService.currentRouteName = PartnersRoute;
//     //   navigationService.lastRouteName = PartnersRoute;
//     //   return _getPageRoute(PartnersView(), settings);
//     // case ReportsRoute:
//     //   navigationService.currentRouteName = ReportsRoute;
//     //   navigationService.lastRouteName = ReportsRoute;
//     //   return _getPageRoute(ReportsView(), settings);
//     // case SettingsRoute:
//     //   navigationService.currentRouteName = SettingsRoute;
//     //   navigationService.lastRouteName = SettingsRoute;
//     //   return _getPageRoute(SettingsView(), settings);
//     // case ManagePlanningsRoute:
//     //   navigationService.currentRouteName = ManagePlanningsRoute;
//     //   navigationService.lastRouteName = ManagePlanningsRoute;
//     //   return _getPageRoute(PlanningsManagerView(), settings);
//     default:
//       if (!auth.isSignedIn) {
//         navigationService.currentRouteName = LogInRoute;
//         navigationService.lastRouteName = ProfileRoute;
//         return _getPageRoute(LogInView(), settings);
//       } else {
//         navigationService.currentRouteName = ProfileRoute;
//         navigationService.lastRouteName = ProfileRoute;
//         return _getPageRoute(LogInView(), settings);
//       }
//   }
// }

// PageRoute _getPageRoute(
//   Widget child,
//   RouteSettings settings, [
//   PageTransitionType type = PageTransitionType.fade,
// ]) {
//   return PageTransition(type: type, child: child, settings: settings);
// }
