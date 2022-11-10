import 'package:doti_app/home/home.dart';
import 'package:doti_app/metered_waste/metered_waste.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

import '../helper/constants.dart';

class WasteSelection extends StatelessWidget {
  const WasteSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChannels.textInput.invokeMethod('TextInput.hide');

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [kWhite, Color(0xffA6FFE9), kWhite],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.8, 0.99],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * 0.5,
              ),
              Text('How would  like to deposit\nyour waste?',
                  style: TextStyle(
                      color: teal,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp)),
              SizedBox(height: 15.h),
              CustomCard(
                  color: const Color.fromRGBO(0, 68, 53, 1),
                  child: ListTile(
                    leading: CustomCard(
                        padding: 5,
                        color: const Color.fromRGBO(0, 175, 132, 1),
                        child: SvgPicture.asset('assets/icon/unmetered.svg')),
                    title: const Text(
                      'Unmetered Waste',
                      style: TextStyle(
                        color: Color.fromRGBO(0, 253, 190, 0.58),
                      ),
                    ),
                    trailing: SvgPicture.asset('assets/icon/circle-check.svg'),
                  )),
              SizedBox(height: 15.h),
              GestureDetector(
                onTap: () => Get.to(() => const MeteredWaste()),
                child: CustomCard(
                    color: const Color.fromRGBO(0, 68, 53, 1),
                    child: ListTile(
                      leading: CustomCard(
                          padding: 5,
                          color: const Color.fromRGBO(0, 175, 132, 1),
                          child:
                              SvgPicture.asset('assets/icon/wastebasket.svg')),
                      title: const Text(
                        'Metered Waste',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 253, 190, 0.58),
                        ),
                      ),
                      trailing:
                          SvgPicture.asset('assets/icon/circle-check.svg'),
                    )),
              ),
              SizedBox(height: 20.h),
              Center(
                child: GestureDetector(
                  onTap: () => Get.back(),
                  child: CustomCard(
                      color: const Color.fromRGBO(0, 68, 53, 1),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 80.w, vertical: 5.h),
                        child: Text('Cancel',
                            style: TextStyle(
                              color: kWhite,
                              fontSize: 16.sp,
                            )),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
