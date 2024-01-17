import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_agency/constant/app_colors.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      top: false,
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: AppBar(
          backgroundColor: AppColors.bgColor,
          centerTitle: true,
          leading: InkWell(onTap:(){
            Get.back();
          },child: const Icon(Icons.arrow_back_ios_new)),
          title: const Text(
            "Notification",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          ),
        ),
        body: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
          return  SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 24),
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(50, (index) =>  Container(
                margin: EdgeInsets.only(bottom: 10),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("2 day Kuyakata tour package From Mymensingh",
                        maxLines: 3,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),),
                      Text("With decades of maintenance of way expertise and experience, no one knows the rail like Loram.",maxLines: 4,style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                      ),)
                    ],
                  ),
                ),
              )),
            ),
          );
        },),
      ),
    );
  }
}
