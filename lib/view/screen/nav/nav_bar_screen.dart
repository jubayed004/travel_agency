import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:travel_agency/constant/app_colors.dart';
import 'package:travel_agency/constant/app_icons.dart';
import 'package:travel_agency/controller/navbar_controller.dart';

class NavBarScreen extends StatelessWidget {
  const NavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: NavBarController(),
      builder: (controller) {
        return Scaffold(
          //Call All BottomNavigation Screen
          body: controller.screens[controller.bottomNavIndex.value],

          //BottomNavigationBar Section
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.bottomNavIndex.value,
            iconSize: 28,
            onTap: (index){
              //BottomNavigation Screen Change Function
              controller.navigation(currentIndex: index);
            },
            selectedItemColor: AppColors.primaryColor,
            unselectedItemColor: AppColors.blackColor,
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.whiteColor,
            enableFeedback: false,
            items: [
              BottomNavigationBarItem(icon: SvgPicture.asset(
                  controller.bottomNavIndex.value==0? AppIcons.homeGreen : AppIcons.homeBlack
              ), label: "Home"),
              BottomNavigationBarItem(icon: SvgPicture.asset(
                  controller.bottomNavIndex.value==1? AppIcons.favoriteGreen : AppIcons.favoriteBlack
              ), label: "Favorite"),
              BottomNavigationBarItem(icon: SvgPicture.asset(
                  controller.bottomNavIndex.value==2? AppIcons.bookingGreen : AppIcons.bookingBlack
              ),label: "Booking"),
              BottomNavigationBarItem(icon: SvgPicture.asset(
                  controller.bottomNavIndex.value==3? AppIcons.profileGreen : AppIcons.profileBlack
              ),label: "Profile"),
            ],
          ),
        );
      }
    );
  }
}
