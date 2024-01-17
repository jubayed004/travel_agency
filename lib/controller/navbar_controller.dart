import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_agency/view/screen/booking/booking_screen.dart';
import 'package:travel_agency/view/screen/favorite/favorite_screen.dart';
import 'package:travel_agency/view/screen/home/home_screen.dart';
import 'package:travel_agency/view/screen/profile/profile_screen.dart';

class NavBarController extends GetxController{
  RxInt bottomNavIndex = 0.obs;
  List<Widget> screens = [
    const HomeScreen(),
    const FavoriteScreen(),
    const BookingScreen(),
    const ProfileScreen(),
  ];

  void navigation({required int currentIndex}) {
    bottomNavIndex.value = currentIndex;
    update();
  }

}