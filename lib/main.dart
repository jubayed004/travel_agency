import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/language_controller.dart';
import 'core/route/app_route.dart';

//Main Function, App Start here
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.noTransition,
      transitionDuration: const Duration(milliseconds: 200),
      //Route Section
      initialRoute: AppRoute.splashScreen, //Navigate Splash Screen
      navigatorKey: Get.key,
      getPages: AppRoute.routes,
      //Languages Section
      translations: Languages(),
      locale: const Locale("en" , "US"),
      fallbackLocale:const Locale("en" , "US"),
    );
  }
}
