import 'package:get/route_manager.dart';
import 'package:khaja_pani/screens/login/login_screen.dart';

import '../screens/onboarding/onboarding_screen.dart';
import '../screens/splashScreen/splash_Screen.dart';

class GetRoutes {
  static const String splashScreen = "/splashcreen";
  static const String onboardingscreen = "/onboardingscreen";
  static const String login = "/onboardingscreen";

  static List<GetPage> routes = [
    GetPage(name: GetRoutes.splashScreen, page: () => const SplashScreen()),
    GetPage(
        name: GetRoutes.onboardingscreen, page: () => const OnboardingScreen()),
    GetPage(name: GetRoutes.login, page: () => const LoginScreen()),
    // GetPage(name: GetRoutes.register, page: () => const RegisterScreen()),
    // GetPage(name: GetRoutes.home, page: () => Home()),
    // GetPage(name: GetRoutes.main, page: () => const NavigationMenu()),
  ];
}
