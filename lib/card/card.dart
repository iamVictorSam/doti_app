import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../helper/constants.dart';

class CardHistory extends StatelessWidget {
  const CardHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                const CardTile(),
                SizedBox(
                  height: 25.h,
                ),
                SizedBox(
                  width: Get.width,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardTile extends StatelessWidget {
  const CardTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color.fromRGBO(4, 128, 109, 0.24),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset('assets/icon/Payment.svg'),
          Column(
            children: [
              Text(
                'Visa ending in 1234',
                style: TextStyle(
                    color: const Color(
                      0xff344054,
                    ),
                    fontSize: 16.sp),
              ),
              Text(
                'Expiry 06/2024',
                style: TextStyle(
                    color: const Color(
                      0xff667085,
                    ),
                    fontSize: 16.sp),
              ),
              SizedBox(height: 5.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Set as default',
                    style: TextStyle(
                        color: const Color(
                          0xff667085,
                        ),
                        fontSize: 16.sp),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Edit',
                    style: TextStyle(color: teal, fontSize: 16.sp),
                  ),
                ],
              ),
            ],
          ),
          Radio(value: false, groupValue: false, onChanged: (vaule) {})
        ],
      ),
    );
  }
}
