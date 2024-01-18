import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_agency/constant/app_colors.dart';
import 'package:travel_agency/constant/app_icons.dart';
import 'package:travel_agency/core/route/app_route.dart';
import 'widget/custom_row.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.bgColor,
        title: const Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
      ),
      body:  SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const Card(
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: ListTile(
                  title: Text(
                    "Srabon Bapari",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "ExtraBold",
                        color: AppColors.primaryColor),
                  ),
                  subtitle: Text("srabonray.dev@gmail.com"),
                ),
              ),
            ),
            const SizedBox(height: 44),
            CustomRow(
              icon: AppIcons.edit,
              text: "Edit profile", onTap: () { Get.toNamed(AppRoute.editProfileScreen); },
            ),
            CustomRow(
              icon: AppIcons.language,
              text: "Language", onTap: () { Get.toNamed(AppRoute.languageScreen); },
            ),
            CustomRow(
              icon: AppIcons.privacy,
              text: "Privacy Policy", onTap: () { Get.toNamed(AppRoute.privacyPolicyScreen);  },
            ),
            CustomRow(
              icon: AppIcons.terms,
              text: "Term Of Condition", onTap: () { Get.toNamed(AppRoute.termsOfConditionScreen); },
            ),
            CustomRow(
              icon: AppIcons.about,
              text: "About Us", onTap: () { Get.toNamed(AppRoute.aboutUsScreen);  },
            ),
            CustomRow(
              icon: AppIcons.shareFriend,
              text: "Share with friend", onTap: () {  },
            ),
            CustomRow(
              icon: AppIcons.signOut,
              text: "Log out", onTap: () { Get.toNamed(AppRoute.loginScreen); },
            ),
          ],
        ),
      ),
    );
  }
}
