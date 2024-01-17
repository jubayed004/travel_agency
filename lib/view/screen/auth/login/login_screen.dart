import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:travel_agency/constant/app_colors.dart';
import 'package:travel_agency/constant/app_icons.dart';
import 'package:travel_agency/constant/app_images.dart';
import 'package:travel_agency/core/route/app_route.dart';
import 'package:travel_agency/view/widget/button/custom_button.dart';
import 'package:travel_agency/view/widget/text_field/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///----- Login Image-----///
                  SizedBox(child: Image.asset(AppImages.login),),
                  const SizedBox(height: 24,),

                  ///-----Form Field-----///
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
                    height: 16,
                  ),
                   Text(
                    "Password".tr,
                    style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomTextField(
                    textInputType: TextInputType.number,
                      isPassword: true,
                      hintText: "Enter your Password".tr,
                      prefixSvgIcon: AppIcons.unlock,
                      controller: TextEditingController()),
                  const SizedBox(
                    height: 16,
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(),
                      GestureDetector(
                        onTap: (){
                          Get.toNamed(AppRoute.forgetScreen);
                        },
                        child: Text(
                          "Forgot Password".tr,
                          style: const TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),

                  ///-----Login Button-----///

                   CustomButton(
                    color: AppColors.primaryColor,
                    text: 'Login '.tr, onTap: () {  },
                  ),
                  const SizedBox(height: 8),
                  Center(
                    child: GestureDetector(
                      onTap: (){
                        Get.toNamed(AppRoute.signUpScreen);
                      },
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Don’t have an account? '.tr,
                              style: TextStyle(
                                color: AppColors.blackColor.withOpacity(0.2),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                             TextSpan(
                              text: 'Sign Up'.tr,
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
