import 'package:flutter_dating_app/modules/auth/auth.dart';
import 'package:flutter_dating_app/modules/home/home.dart';
import 'package:flutter_dating_app/modules/me/cards/cards_screen.dart';
import 'package:flutter_dating_app/modules/modules.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.AUTH,
      page: () => AuthScreen(),
      binding: AuthBinding(),
      children: [
        GetPage(name: Routes.REGISTER, page: () => RegisterScreen()),
        GetPage(name: Routes.LOGIN, page: () => LoginScreen()),
      ],
    ),
    GetPage(
        name: Routes.HOME,
        page: () => HomeScreen(),
        binding: HomeBinding(),
        children: [
          GetPage(name: Routes.CARDS, page: () => CardsScreen()),
        ]),
  ];
}
