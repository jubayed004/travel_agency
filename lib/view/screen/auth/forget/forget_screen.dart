import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:travel_agency/constant/app_colors.dart';
import 'package:travel_agency/constant/app_icons.dart';
import 'package:travel_agency/constant/app_images.dart';
import 'package:travel_agency/core/route/app_route.dart';
import 'package:travel_agency/view/widget/button/custom_button.dart';
import 'package:travel_agency/view/widget/text_field/custom_text_field.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SafeArea(
      bottom: false,
      top: false,
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: AppBar(
          backgroundColor: AppColors.bgColor,
          leading: GestureDetector(
            onTap: (){
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios_new,
                color: Colors.black.withOpacity(0.8)),
          ),
          title:  Text(
            " Forget Password".tr,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///----- Forget Image-----///
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Image.asset(AppImages.forgetPass),
                  ),
                  const SizedBox(
                    height: 24,
                  ),

                  ///-----Form Field-----///
                  Text(
                    "Email".tr,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomTextField(
                      hintText: "Enter your Email".tr,
                      prefixSvgIcon: AppIcons.email,
                      controller: TextEditingController()),

                  const SizedBox(
                    height: 24,
                  ),

                  ///-----Forget Button-----///

                  CustomButton(
                    color: AppColors.primaryColor,
                    text: 'Forget  '.tr, onTap: () {   Get.toNamed(AppRoute.loginScreen); },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
