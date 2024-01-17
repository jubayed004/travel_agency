import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:travel_agency/constant/app_colors.dart';
import 'package:travel_agency/constant/app_icons.dart';
import 'package:travel_agency/constant/app_images.dart';
import 'package:travel_agency/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: GetBuilder<SplashController>(
            init: SplashController(),
            builder: (controller) {
              return const Center(
                child: Text("Travel Agency",
                  style: TextStyle(
                      fontSize: 20,
                  fontWeight: FontWeight.w600
                ),),
              );
            }
        ),
      ),
    );
  }
}
