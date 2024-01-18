import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_agency/constant/app_colors.dart';
import 'package:travel_agency/constant/app_icons.dart';
import 'package:travel_agency/core/route/app_route.dart';
import 'package:travel_agency/view/widget/button/custom_button.dart';
import 'package:travel_agency/view/widget/text_field/custom_text_field.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios_new),
        title: const Text(
          "Edit Profile",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name".tr,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 16),
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomTextField(
                    hintText: "Enter your Name".tr,
                    prefixSvgIcon: AppIcons.email,
                    controller: TextEditingController()),
                const SizedBox(
                  height: 16,
                ),
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
                const SizedBox(height: 16),
                Text(
                  "Phone".tr,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 16),
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomTextField(
                    textInputType: TextInputType.number,
                    hintText: "Enter your PhoneNumber".tr,
                    prefixSvgIcon: AppIcons.email,
                    controller: TextEditingController()),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Address".tr,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 16),
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomTextField(
                    hintText: "Enter your Address".tr,
                    prefixSvgIcon: AppIcons.email,
                    controller: TextEditingController()),
                const SizedBox(
                  height: 24,
                ),
                CustomButton(
                  color: AppColors.primaryColor,
                  text: 'Save '.tr,
                  onTap: () {
                    Get.toNamed(AppRoute.profileScreen);
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
