import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_agency/constant/app_colors.dart';
import 'controller/language_controller.dart';
import 'core/route/app_route.dart';

///---------Main Function, App Start here--------///
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Travel Agency",
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.noTransition,
      transitionDuration: const Duration(milliseconds: 200),

      ///-------Theme Section---------///
      theme: ThemeData(
        fontFamily: "Regular",
        primaryColor: AppColors.primaryColor,
      ),

      ///---------Route Section---------///
      initialRoute: AppRoute.splashScreen, //First Navigate Splash Screen
      navigatorKey: Get.key,
      getPages: AppRoute.routes,

      ///------------Languages Section---------///
      translations: Languages(),
      locale: const Locale("en" , "US"),
      fallbackLocale:const Locale("en" , "US"),
    );
  }
}
