import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_agency/constant/app_colors.dart';
import 'package:travel_agency/constant/app_images.dart';
import 'package:travel_agency/core/route/app_route.dart';
import 'package:travel_agency/view/widget/button/custom_button.dart';

class OnbroadingScreenthree extends StatelessWidget {
  const OnbroadingScreenthree({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.bgColor,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            //padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Column(
              children: <Widget>[
                ///-------Onboarding Image-------///
                SizedBox(
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),),
                      child: Image.asset(AppImages.leftCardBG,fit: BoxFit.contain,
                      )
                  ),
                ),
                const SizedBox(height: 56,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,),
                  child: Column(
                    children: [
                      Text("People don’t take trips ,trips fake People".tr,
                        maxLines: 2,
                        style: const TextStyle(
                            color: AppColors.blackColor,
                            fontFamily: "Medium",
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),),
                      SizedBox(height: MediaQuery.of(context).size.height/8,),

                      ///--------Button Section-------///
                      CustomButton(
                        textColor:AppColors.whiteColor,
                        text: "Next".tr,color: AppColors.primaryColor, onTap: () {
                           // Get.toNamed(AppRoute.)
                      },),
                      const SizedBox(height: 8,),
                      CustomButton(
                        textColor: AppColors.orangeColor,
                        text: "Back".tr,
                        color: AppColors.buttonColor, onTap: () {
                          Get.back();
                      },),
                    ],
                  ),
                ),

              ],
            ),
          );
        },
      ),
    );
  }
}
