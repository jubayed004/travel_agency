import 'package:flutter/material.dart';
import 'package:travel_agency/constant/app_colors.dart';
import 'package:travel_agency/view/widget/card/custom_card.dart';
import 'package:travel_agency/view/widget/search/custom_search.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        title: const Text("Search"),
        backgroundColor: AppColors.bgColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10.0),
        child: Column(
          children: [
            CustomSearch(hintText: "Search hare", onTap: (){},),
            SizedBox(height: 24,),
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
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
          ],
        ),
      ),
    );
  }
}
