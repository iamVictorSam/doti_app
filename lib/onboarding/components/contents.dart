import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../helper/constants.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    Key? key,
    this.text,
    this.image,
    this.title,
  }) : super(key: key);
  final String? text, image;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          height: 50.h,
        ),
        Center(
          child: Image.asset(
            image!,
            height: Get.height,
            // width: (300.w),
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 50.h,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo/Logo 01.png',
                  height: 50,
                ),
                SizedBox(
                  height: 60.h,
                ),
                Text(
                  title!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 23.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  width: Get.width * 0.65,
                  child: Text(
                    text!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
                      height: 1.8,
                      color: const Color.fromRGBO(255, 244, 148, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
