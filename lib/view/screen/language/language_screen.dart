import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_agency/constant/app_colors.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  var seletedValue;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: AppBar(
          backgroundColor: AppColors.bgColor,
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(Icons.arrow_back_ios_new)),
          title: const Text(
            "Language",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          ),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) =>
              SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(
                top: 24, left: 20, bottom: 100, right: 20),
            child: Column(children: [
              Container(
                margin: const EdgeInsets.only(bottom: 8),
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerLeft,
                decoration: ShapeDecoration(
                  color: AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.50, color: AppColors.bgColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Row(
                  children: [
                    Radio(
                        activeColor: AppColors.primaryColor,
                        value: "English",
                        groupValue: seletedValue,
                        onChanged: (value) {
                          setState(() {
                            seletedValue = value;
                          });
                        }),
                    const Padding(
                      padding: EdgeInsets.only(
                          left: 16, right: 16, top: 16, bottom: 16),
                      child: Text("English"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Container(
                margin: const EdgeInsets.only(bottom: 8),
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerLeft,
                decoration: ShapeDecoration(
                  color: AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.50, color: AppColors.bgColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Row(
                  children: [
                    Radio(
                        value: "Bangali",
                        groupValue: seletedValue,
                        activeColor: AppColors.primaryColor,
                        onChanged: (value) {
                          setState(() {
                            seletedValue = value;
                          });
                        }),
                    const Padding(
                      padding: EdgeInsets.only(
                          left: 16, right: 16, top: 16, bottom: 16),
                      child: Text("Bangali"),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
