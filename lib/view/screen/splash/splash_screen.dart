import 'package:flutter/material.dart';
import 'package:travel_agency/constant/app_colors.dart';
import 'package:travel_agency/view/widget/grid/custom_grid.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(""),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: CustomGrid(day: 5, imageURL: '',),
            ),
          ],
        ),
      ),
    );
  }
}
