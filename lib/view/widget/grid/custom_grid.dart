import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_agency/constant/app_colors.dart';
import 'package:travel_agency/constant/app_icons.dart';

class CustomGrid extends StatelessWidget {
  const CustomGrid({super.key, required this.day, required this.imageURL});
  final int day;
  final String imageURL;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.whiteColor,
          ),
          child: Column(
            children: [
              SizedBox(
                height: height / 5,
                width: width,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: imageURL,
                          placeholder: (context, url) =>
                              const Center(child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) =>
                              const Center(child: Icon(Icons.error)),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 5,
                      right: 5,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: SvgPicture.asset(AppIcons.favorite),
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      right: 5,
                      child: Container(
                        height: 35,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.whiteColor.withOpacity(0.6),
                        ),
                        child: Center(child: Text("$day Days",
                          style: const TextStyle(fontSize: 12,color: AppColors.primaryColor),
                        ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text("5 day cox's bazar tour package From Mymensingh  day cox's bazar tour package From Mymensingh",maxLines: 2,style: TextStyle(
                fontSize: 18,
                fontFamily: "SemiBold",
              ),),
              SizedBox(height: 5,),
              Row(
                children: [
                  SvgPicture.asset(AppIcons.location),
                  SizedBox(width: 5,),
                  Flexible(child: Text("Cox’s bazar, Chattogram, Dhaka, Bangladesh", maxLines: 2,)),
                ],
              ),
            ],
          ),
        );
  }
}
