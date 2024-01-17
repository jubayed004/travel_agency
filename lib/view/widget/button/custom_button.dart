import 'package:flutter/material.dart';
import 'package:travel_agency/constant/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,
    required this.text,
    this.color= AppColors.primaryColor,
    this.textColor = AppColors.whiteColor, required this.onTap,
  });
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color,
        ),
        child: Center(child: Text(text,style: TextStyle(color: textColor, fontSize: 18,fontFamily: "SemiBold"),),),
      ),
    );
  }
}
