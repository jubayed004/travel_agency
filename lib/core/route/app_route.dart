import 'package:get/get.dart';
import 'package:travel_agency/view/screen/splash/splash_screen.dart';


//App All Route
class AppRoute{
  static const String splashScreen = "/splash_screen";

  static List<GetPage> routes = [

    GetPage(name: splashScreen, page: () => const SplashScreen()),
  ];
}


