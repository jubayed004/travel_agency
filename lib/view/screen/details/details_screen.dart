import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import 'package:travel_agency/constant/app_colors.dart';
import 'package:travel_agency/constant/app_constant.dart';
import 'package:travel_agency/constant/app_icons.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        bottomNavigationBar: Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 10),
          decoration: const BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30)
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\$50${AppConstant.currency}",style: TextStyle(
                    fontSize: 20,
                    fontFamily: "SemiBold"
                  ),),
                  Text("5 Days Package".tr,style: TextStyle(
                      fontSize: 16,
                      fontFamily: "SemiBold"
                  ),),

                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.primaryColor,
                ),
                child: Text("Booking Now".tr,style: TextStyle(
                  fontFamily: "Regular",
                  fontSize: 18,
                  color: AppColors.whiteColor,
                ),),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              //Details Screen Top Section
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      bottom: 0,
                      right: 0,
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl:
                            "https://assets.traveltriangle.com/blog/wp-content/uploads/2016/07/limestone-rock-phang-nga-1-Beautiful-limestone-rock-in-the-ocean.jpg",
                        placeholder: (context, url) =>
                            const Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 20,
                      child: SvgPicture.asset(AppIcons.arrowLeft),
                    ),
                    Positioned(
                      top: 10,
                      right: 20,
                      child: SvgPicture.asset(AppIcons.blackRoundFavorite),
                    ),
                    Positioned(
                      top: 10,
                      right: 70,
                      child: SvgPicture.asset(AppIcons.share),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 20,
                      child: Container(
                        height: 35,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17.5),
                          color: AppColors.whiteColor
                        ),
                        child: Center(child: Text("active".tr,style: TextStyle(color: AppColors.primaryColor),)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                child: Column(
                  children: [
                    //Trip Title
                    const Text(
                      "5 day cox's bazar tour package From Mymensingh",
                      maxLines: 2,
                      style: TextStyle(
                        fontFamily: "SemiBold",
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    //Trip Location
                    Row(
                      children: [
                        SvgPicture.asset(AppIcons.location),
                        const SizedBox(
                          width: 5,
                        ),
                        const Flexible(
                            child: Text(
                          "Cox’s bazar, Chattogram, Dhaka, Bangladesh",
                          maxLines: 2,
                        )),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Text("Time and Date".tr,
                            style: TextStyle(
                              fontFamily: "SemiBold",
                              fontSize: 14,
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.whiteColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Check In".tr,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w800),
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text("Date".tr),
                                  Text(
                                    "05/01/2024",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 24,
                              ),
                              Column(
                                children: [
                                  Text("Time".tr),
                                  Text(
                                    "10:00 AM",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.whiteColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Check Out".tr,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w800),
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text("Date".tr),
                                  Text(
                                    "12/01/2024",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 24,
                              ),
                              Column(
                                children: [
                                  Text("Time".tr),
                                  Text(
                                    "8:00 PM",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text("Package".tr,
                        style: TextStyle(
                          fontFamily: "SemiBold",
                          fontSize: 14,
                        )),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Text("Description".tr,
                            style: TextStyle(
                              fontFamily: "SemiBold",
                              fontSize: 14,
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const ReadMoreText(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes.",
                      trimLines: 2,
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: ' Show more',
                      trimExpandedText: ' Show less',
                      lessStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      moreStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Text("Instructions".tr,
                            style: TextStyle(
                              fontFamily: "SemiBold",
                              fontSize: 14,
                            ))
                      ],
                    ),
                    const SizedBox(height: 8),
                    const ReadMoreText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes.",
                      trimLines: 2,
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: ' Show more',
                      trimExpandedText: ' Show less',
                      lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),

                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Text("Child Policy".tr, style: TextStyle(fontFamily: "SemiBold", fontSize: 14,),),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const ReadMoreText(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes.",
                      trimLines: 2,
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: ' Show more',
                      trimExpandedText: ' Show less',
                      lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
