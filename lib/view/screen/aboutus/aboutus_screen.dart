import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios_new)),
        title: Text(
          "About Us".tr,
          style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          children: [
            Text(
              "With decades of maintenance of way expertise and experience, no one knows the rail like Loram. Today, withour Loram Technologies business group, we’re leveragingour accumulated data, analytics and maintenance algorithms with advanced inspection technologies to provide you actionable intelligence with real-time monitoring and the most precise application of maintenance of way activities. In this new era of digital",
              maxLines: 20,
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
