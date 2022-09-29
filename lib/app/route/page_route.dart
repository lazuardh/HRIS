import 'package:flutter_application_1/app/route/route_name.dart';
import 'package:flutter_application_1/app/screens/home_screen/home_admin/home_admin.dart';
import 'package:flutter_application_1/app/screens/login_screen/login.dart';
import 'package:flutter_application_1/app/screens/navigation/navigation.dart';
import 'package:flutter_application_1/app/screens/onboarding_screen/onboarding_screen.dart';

class AppPage {
  static final pages = {
    RouteName.onBoardingScreen: (contex) => const OnBoardingScreen(),
    RouteName.loginScreen: (contex) => const Login(),
    RouteName.navigation: (context) => const Navigation(),
    RouteName.homeAdminScreen: (context) => const HomeAdmin(),
  };
}
