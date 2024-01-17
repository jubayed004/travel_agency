import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({super.key, required this.icon, required this.text});
  final String icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: [
          SvgPicture.asset(icon,height: 35,width: 35,),
          const SizedBox(width: 12,),
          Text(text,style: const TextStyle(fontSize: 18,fontFamily: "SemiBold"),),
        ],
      ),
    );
  }
}
