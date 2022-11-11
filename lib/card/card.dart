import 'package:doti_app/home/home.dart';
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                const CustomCard(
                    child: Icon(
                  Icons.arrow_back,
                  color: kWhite,
                )),
                SizedBox(
                  height: 20.h,
                ),
                const CardTile(),
                SizedBox(
                  height: 25.h,
                ),
                const CardTile(),
                SizedBox(
                  height: 25.h,
                ),
                _addCardBtn(
                  press: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _addCardBtn({required GestureTapCallback press}) => GestureDetector(
        onTap: press,
        child: Center(
          child: SizedBox(
            width: Get.width * 0.75,
            height: 40.h,
            child: CustomCard(
                child: Center(
              child: Text(
                'Add New Card',
                style: TextStyle(color: kWhite, fontSize: 16.sp),
              ),
            )),
          ),
        ),
      );
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset('assets/icon/Payment.svg'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Visa ending in 1234',
                style: TextStyle(
                    color: const Color(
                      0xff344054,
                    ),
                    fontSize: 16.sp),
              ),
              SizedBox(height: 5.h),
              Text(
                'Expiry 06/2024',
                style: TextStyle(
                    color: const Color(
                      0xff667085,
                    ),
                    fontSize: 16.sp),
              ),
              SizedBox(height: 10.h),
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
