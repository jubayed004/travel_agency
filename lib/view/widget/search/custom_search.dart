import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_agency/constant/app_colors.dart';
import 'package:travel_agency/constant/app_icons.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key, required this.hintText, this.prefixSvgIcon, this.suffixSvgIcon, this.onTap});
  final String hintText;
  final String? prefixSvgIcon;
  final String? suffixSvgIcon;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon:Padding(
            padding: const EdgeInsetsDirectional.only(start: 12, top: 10, bottom: 10, end: 8),
            child: SvgPicture.asset(AppIcons.search),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(start: 12, top: 10, bottom: 10, end: 8),
            child: SvgPicture.asset(AppIcons.sort),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColors.blackColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColors.blackColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColors.blackColor),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColors.redColor),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
