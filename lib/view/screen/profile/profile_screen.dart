import 'package:flutter/material.dart';
import 'package:travel_agency/constant/app_colors.dart';
import 'package:travel_agency/constant/app_icons.dart';
import 'widget/custom_row.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text("Profile"),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 18,vertical: 10),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Card(
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: ListTile(
                  title: Text("Srabon Bapari",style: TextStyle(
                    fontSize: 18,
                    fontFamily: "ExtraBold",
                    color: AppColors.primaryColor
                  ),),
                  subtitle: Text("srabonray.dev@gmail.com"),
                ),
              ),
            ),
            SizedBox(height: 44,),
            CustomRow(icon: AppIcons.edit, text: "Edit profile",),
            CustomRow(icon: AppIcons.language, text: "Language",),
            CustomRow(icon: AppIcons.privacy, text: "Privacy Policy",),
            CustomRow(icon: AppIcons.terms, text: "Term Of Condition",),
            CustomRow(icon: AppIcons.about, text: "About Us",),
            CustomRow(icon: AppIcons.shareFriend, text: "Share with friend",),
            CustomRow(icon: AppIcons.signOut, text: "Log out",),
          ],
        ),
      ),
    );
  }
}
