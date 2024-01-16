import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_agency/constant/app_colors.dart';
import 'package:travel_agency/constant/app_icons.dart';
import 'package:travel_agency/constant/app_images.dart';
import 'package:travel_agency/core/route/app_route.dart';
import 'package:travel_agency/view/widget/button/custom_button.dart';
import 'package:travel_agency/view/widget/text_field/custom_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///----- Login Image-----///
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 48.0),
                      child: Image.asset(AppImages.register),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height /24,
                  ),

                  ///-----Form Field-----///

                  Text(
                    "Full Name".tr,
                    style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomTextField(
                      hintText: "Enter your Name".tr,
                      prefixSvgIcon: AppIcons.profile,
                      controller: TextEditingController()),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Email".tr,
                    style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomTextField(

                      hintText: "Enter your Email".tr,
                      prefixSvgIcon: AppIcons.callHung,
                      controller: TextEditingController()),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Password".tr,
                    style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomTextField(
                      isPassword: true,
                      hintText: "Enter your Password".tr,
                      prefixSvgIcon: AppIcons.unlock,
                      controller: TextEditingController()),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Confirm Password".tr,
                    style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  CustomTextField(
                      isPassword: true,
                      hintText: "Confirm Password".tr,
                      prefixSvgIcon: AppIcons.callHung,
                      controller: TextEditingController()
                  ),
                  const SizedBox(
                    height: 24,
                  ),

                  ///-----Login Button-----///

                  CustomButton(
                    color: AppColors.primaryColor,
                    text: 'Sign Up '.tr,
                  ),
                  const SizedBox(height: 8),
                  Center(
                    child: GestureDetector(
                      onTap: (){
                        Get.toNamed(AppRoute.loginScreen);
                      },
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Already have an account? '.tr,
                              style: TextStyle(
                                color: AppColors.blackColor.withOpacity(0.2),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: 'LonIn Here'.tr,
                              style: const TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
