import 'dart:async';
import 'package:get/get.dart';
import 'package:travel_agency/core/route/app_route.dart';

class SplashController extends GetxController{

  @override
  void onInit() {
    navigation();
    super.onInit();
  }

  void navigation(){
    Timer(const Duration(seconds: 3), () {
      Get.offAndToNamed(AppRoute.loginScreen);
    });
  }
}