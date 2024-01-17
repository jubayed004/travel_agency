import 'package:flutter/material.dart';
import 'package:travel_agency/constant/app_colors.dart';
import 'package:travel_agency/view/widget/card/custom_card.dart';

class RecentTrip extends StatelessWidget {
  const RecentTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        title: const Text("Recent Trip"),
        backgroundColor: AppColors.bgColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 10),
        child: ListView.builder(
          itemCount: 100,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: EdgeInsets.only(bottom: 12.0),
              child: CustomCard(
                imageURL: "https://assets.traveltriangle.com/blog/wp-content/uploads/2016/07/limestone-rock-phang-nga-1-Beautiful-limestone-rock-in-the-ocean.jpg",
                title: "5 day cox's bazar tour package From Mymensingh",
                location: "Cox’s bazar, Chattogram, Dhaka, Bangladesh",
              ),
            );
          },
        ),
      ),
    );
  }
}
