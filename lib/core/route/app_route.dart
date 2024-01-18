import 'package:get/get.dart';
import 'package:travel_agency/view/screen/Onboarding/onboarding_screen_one.dart';
import 'package:travel_agency/view/screen/Onboarding/onboarding_screen_three.dart';
import 'package:travel_agency/view/screen/Onboarding/onboarding_screen_two.dart';
import 'package:travel_agency/view/screen/aboutus/aboutus_screen.dart';

import 'package:travel_agency/view/screen/auth/forget/forget_screen.dart';
import 'package:travel_agency/view/screen/auth/login/login_screen.dart';
import 'package:travel_agency/view/screen/auth/signup/signup_screen.dart';
import 'package:travel_agency/view/screen/editprofile/edit_profile_screen.dart';
import 'package:travel_agency/view/screen/language/language_screen.dart';
import 'package:travel_agency/view/screen/notification/notification_screen.dart';
import 'package:travel_agency/view/screen/privacypolicy/privacypolicy_screen.dart';
import 'package:travel_agency/view/screen/booking/booking_screen.dart';
import 'package:travel_agency/view/screen/details/details_screen.dart';
import 'package:travel_agency/view/screen/favorite/favorite_screen.dart';
import 'package:travel_agency/view/screen/home/home_screen.dart';
import 'package:travel_agency/view/screen/nav/nav_bar_screen.dart';
import 'package:travel_agency/view/screen/popular/popular_place.dart';
import 'package:travel_agency/view/screen/profile/profile_screen.dart';
import 'package:travel_agency/view/screen/recent/recent_trip.dart';
import 'package:travel_agency/view/screen/search/search_screen.dart';
import 'package:travel_agency/view/screen/splash/splash_screen.dart';
import 'package:travel_agency/view/screen/termsofcondition/termsofcondition_screen.dart';


//App All Route
class AppRoute{
  static const String splashScreen = "/splash_screen";
  static const String onboardingScreenOne = "/onboarding_screen_one";
  static const String onboardingScreenTwo = "/onboarding_screen_two";
  static const String onboardingScreenThree = "/onboarding_screen_three";
  static const String loginScreen = "/login_screen";
  static const String signUpScreen = "/signup_screen";
  static const String forgetScreen = "/forget_screen";
  static const String aboutUsScreen = "/aboutus_screen";
  static const String termsOfConditionScreen = "/termsofcondition_screen";
  static const String privacyPolicyScreen = "/privacypolicy_screen";
  static const String languageScreen = "/language_screen";
  static const String editProfileScreen = "/edit_profile_screen";
  static const String notificationScreen = "/notification_screen";
  static const String homeScreen = "/home_screen";
  static const String navBarScreen = "/nav_bar_screen";
  static const String favoriteScreen = "/favorite_screen";
  static const String bookingScreen = "/booking_screen";
  static const String recentTrip = "/recent_trip";
  static const String popularTrip = "/popular_trip";
  static const String searchScreen = "/search_screen";
  static const String profileScreen = "/profile_screen";
  static const String detailsScreen = "/details_screen";

  static List<GetPage> routes = [

    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: onboardingScreenOne, page: () => const OnboardingScreenOne()),
    GetPage(name: onboardingScreenTwo, page: () => const OnbroadingScreenTwo()),
    GetPage(name: onboardingScreenThree, page: () => const OnbroadingScreenthree()),
    GetPage(name: loginScreen, page: () => const LoginScreen()),
    GetPage(name: signUpScreen, page: () => const SignUpScreen()),
    GetPage(name: forgetScreen, page: () => const ForgetScreen()),
    GetPage(name: aboutUsScreen, page: () => const AboutUsScreen()),
    GetPage(name: termsOfConditionScreen, page: () => const TermsOfConditionScreen()),
    GetPage(name: privacyPolicyScreen, page: () => const PrivacyPolicyScreen()),
    GetPage(name: languageScreen, page: () => const LanguageScreen()),
    GetPage(name: editProfileScreen, page: () => const EditProfileScreen()),
    GetPage(name: notificationScreen, page: () => const NotificationScreen()),
    GetPage(name: homeScreen, page: () => const HomeScreen()),
    GetPage(name: navBarScreen, page: () => const NavBarScreen()),
    GetPage(name: favoriteScreen, page: () => const FavoriteScreen()),
    GetPage(name: bookingScreen, page: () => const BookingScreen()),
    GetPage(name: recentTrip, page: () => const RecentTrip()),
    GetPage(name: popularTrip, page: () => const PopularTrip()),
    GetPage(name: searchScreen, page: () => const SearchScreen()),
    GetPage(name: profileScreen, page: () => const ProfileScreen()),
    GetPage(name: detailsScreen, page: () => const DetailsScreen()),
  ];
}


