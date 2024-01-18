import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:travel_agency/constant/app_colors.dart';
import 'package:travel_agency/constant/app_icons.dart';
import 'package:travel_agency/core/route/app_route.dart';
import 'package:travel_agency/view/widget/card/custom_card.dart';
import 'package:travel_agency/view/widget/grid/custom_grid.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 44),
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              ///----Congratulations Section -- Top Section---///
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hello, beautiful people!".tr,
                      style:
                          const TextStyle(fontSize: 24, fontFamily: "SemiBold"),
                    ),
                    SvgPicture.asset(AppIcons.notification),
                  ],
                ),
              ),

              ///------Search Section-----///
              GestureDetector(
                onTap: (){
                  Get.toNamed(AppRoute.searchScreen);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(color: AppColors.blackColor),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(AppIcons.search),
                          const Text("Search hare"),
                        ],
                      ),
                      SvgPicture.asset(AppIcons.sort),
                    ],
                  ),
                ),
              ),

              ///----------Favorite place Section----------///

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Favorite place".tr,
                      style: const TextStyle(
                          fontFamily: "Medium",
                          fontSize: 16,
                          color: AppColors.blackColor),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Get.toNamed(AppRoute.popularTrip);
                          },
                          child: Text("see all".tr,style: const TextStyle(fontSize: 14,color: AppColors.primaryColor),),
                        ),
                        const SizedBox(width: 5),
                        SvgPicture.asset(
                          AppIcons.arrowRight,
                          height: 20,
                          width: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              ///-------Favorite place List------///

              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/3+40,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 1.4,
                        child: const CustomGrid(
                          day: 3,
                          imageURL:
                          "https://assets.traveltriangle.com/blog/wp-content/uploads/2016/07/limestone-rock-phang-nga-1-Beautiful-limestone-rock-in-the-ocean.jpg",
                        ),
                      ),
                    );
                  },
                ),
              ),
              ///---------Recent Add place Section------///
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent place".tr,
                      style: const TextStyle(
                          fontFamily: "Medium",
                          fontSize: 16,
                          color: AppColors.blackColor),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Get.toNamed(AppRoute.recentTrip);
                          },
                          child: Text("see all".tr,style: const TextStyle(fontSize: 14,color: AppColors.primaryColor),),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SvgPicture.asset(
                          AppIcons.arrowRight,
                          height: 20,
                          width: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              ///-----------Recent Add place List---------///

              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: GestureDetector(
                      onTap: (){
                        Get.toNamed(AppRoute.detailsScreen);
                      },
                      child: const CustomCard(
                        imageURL: "https://assets.traveltriangle.com/blog/wp-content/uploads/2016/07/limestone-rock-phang-nga-1-Beautiful-limestone-rock-in-the-ocean.jpg",
                        title: "2 day Kuyakata tour package From Mymensingh",
                        location: "Kuyakata, Potuakhali, Barisal, Dhaka, Bangladesh",
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
