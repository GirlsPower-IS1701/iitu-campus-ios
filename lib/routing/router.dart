
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:page_transition/page_transition.dart';

// Route<dynamic> generateRoute(RouteSettings settings) {
//   final navigationService = locator.get<NavigationService>();
//   final auth = locator.get<FirebaseAuthApi>();

//   final routingData = settings.name.getRoutingData; // Get the routing Data

//   if (!auth.isSignedIn && routingData.route != SignInRoute) {
//     navigationService.currentRouteName = SignInRoute;
//     navigationService.lastRouteName = routingData.route;
//     return _getPageRoute(SignInView(), settings);
//   }

//   switch (routingData.route) {
//     // Switch on the path from the data
//     case SignInRoute:
//       navigationService.currentRouteName = SignInRoute;
//       return _getPageRoute(SignInView(), settings);
//     case HomeRoute:
//       navigationService.currentRouteName = HomeRoute;
//       navigationService.lastRouteName = HomeRoute;
//       return _getPageRoute(HomeView(), settings);
//     case PlanningRoute:
//       navigationService.currentRouteName = PlanningRoute;
//       navigationService.lastRouteName = PlanningRoute;
//       return _getPageRoute(PlanningListView(), settings);
//     case ContentsRoute:
//       navigationService.currentRouteName = ContentsRoute;
//       navigationService.lastRouteName = ContentsRoute;
//       return _getPageRoute(ContentsView(), settings);
//     case BoardsRoute:
//       navigationService.currentRouteName = BoardsRoute;
//       navigationService.lastRouteName = BoardsRoute;
//       final id = routingData['id'];
//       if (id != null) {
//         final showMetrics = (routingData['metrics'] == 'true');
//         return _getPageRoute(
//           BoardView(
//             id: id,
//             showMetrics: showMetrics,
//           ),
//           settings,
//           PageTransitionType.rightToLeft,
//         );
//       }
//       return _getPageRoute(BoardsView(), settings);
//     case PartnersRoute:
//       navigationService.currentRouteName = PartnersRoute;
//       navigationService.lastRouteName = PartnersRoute;
//       return _getPageRoute(PartnersView(), settings);
//     case ReportsRoute:
//       navigationService.currentRouteName = ReportsRoute;
//       navigationService.lastRouteName = ReportsRoute;
//       return _getPageRoute(ReportsView(), settings);
//     case SettingsRoute:
//       navigationService.currentRouteName = SettingsRoute;
//       navigationService.lastRouteName = SettingsRoute;
//       return _getPageRoute(SettingsView(), settings);
//     case ManagePlanningsRoute:
//       navigationService.currentRouteName = ManagePlanningsRoute;
//       navigationService.lastRouteName = ManagePlanningsRoute;
//       return _getPageRoute(PlanningsManagerView(), settings);
//     default:
//       if (!auth.isSignedIn) {
//         navigationService.currentRouteName = SignInRoute;
//         navigationService.lastRouteName = PlaylistsRoute;
//         return _getPageRoute(SignInView(), settings);
//       } else {
//         navigationService.currentRouteName = ContentsRoute;
//         navigationService.lastRouteName = ContentsRoute;
//         return _getPageRoute(ContentsView(), settings);
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
