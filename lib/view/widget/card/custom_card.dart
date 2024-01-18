import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_agency/constant/app_colors.dart';
import 'package:travel_agency/constant/app_icons.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.imageURL, required this.title, required this.location});
  final String imageURL;
  final String title;
  final String location;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 90,
            width: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: imageURL,
                placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
          SizedBox(width: 8,),
          Flexible(
            child: Column(
              children: [
                Text(title,maxLines: 2,style: TextStyle(
                  fontSize: 18,
                  fontFamily: "SemiBold",
                ),),
                SizedBox(height: 5,),
                Row(
                  children: [
                    SvgPicture.asset(AppIcons.location),
                    SizedBox(width: 5,),
                    Flexible(child: Text(location, maxLines: 2,)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
