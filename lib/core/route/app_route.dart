import 'package:get/get.dart';
import 'package:travel_agency/view/screen/auth/forget/forget_screen.dart';
import 'package:travel_agency/view/screen/auth/login/login_screen.dart';
import 'package:travel_agency/view/screen/auth/signup/signup_screen.dart';
import 'package:travel_agency/view/screen/splash/splash_screen.dart';


//App All Route
class AppRoute{
  static const String splashScreen = "/splash_screen";
  static const String loginScreen = "/login_screen";
  static const String signUpScreen = "/signup_screen";
  static const String forgetScreen = "/forget_screen";

  static List<GetPage> routes = [

    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: loginScreen, page: () => const LoginScreen()),
    GetPage(name: signUpScreen, page: () => const SignUpScreen()),
    GetPage(name: forgetScreen, page: () => const ForgetScreen()),
  ];
}


