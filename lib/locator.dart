import 'package:campus/services/api/firebase_auth_api.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<FirebaseAuthApi>(FirebaseAuthApi());
  //locator.registerLazySingleton<UsersApi>(() => UsersApi());
  //locator.registerSingleton<NavigationService>(NavigationService());
}
