import 'package:doti_app/map/map.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../helper/default_btn.dart';
import 'form.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.height * 0.1),
              const LoginForm(),
              SizedBox(height: 30.h),
              DefaultBtn(
                text: 'Login',
                press: () => Get.offAll(() => const MapScreen()),
              ),
              SizedBox(height: 30.h),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}
