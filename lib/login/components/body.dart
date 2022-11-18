import 'package:doti_app/map/map.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../helper/default_btn.dart';
import '../../helper/horizontal_line.dart';
import '../../signup/components/body.dart';
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    HorizontalLine(),
                    Text('  OR LOGIN WITH  ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600)),
                    HorizontalLine(),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              const SignUpWith(),
            ],
          ),
        ),
      ),
    );
  }
}
