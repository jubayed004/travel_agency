import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({super.key, required this.icon, required this.text, required this.onTap});
  final String icon;
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Row(
          children: [
            SvgPicture.asset(icon,height: 35,width: 35,),
            const SizedBox(width: 12,),
            Text(text,style: const TextStyle(fontSize: 18,fontFamily: "SemiBold"),),
          ],
        ),
      ),
    );
  }
}
