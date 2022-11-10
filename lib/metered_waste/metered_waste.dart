import 'package:doti_app/helper/constants.dart';
import 'package:doti_app/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MeteredWaste extends StatelessWidget {
  const MeteredWaste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: Get.height * 0.1,
          ),
          Center(
              child: Image.asset(
            'assets/image/waste-bin.png',
            height: 120.h,
          )),
          SizedBox(
            height: Get.height * 0.1,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Text(
              'Select waste quantity',
              style: TextStyle(
                  color: const Color.fromRGBO(0, 148, 115, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp),
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromRGBO(0, 0, 0, 0.27)),
                          borderRadius: BorderRadius.circular(7),
                          color: const Color.fromRGBO(0, 68, 53, 0.21)),
                      padding: const EdgeInsets.all(14),
                      child: Text('One bag',
                          style: TextStyle(
                              color: teal,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp))),
                ),
                SizedBox(
                  width: 10.w,
                ),
                const CustomCard(
                    child: Icon(
                  Icons.remove,
                  color: kWhite,
                )),
                SizedBox(
                  width: 10.w,
                ),
                const CustomCard(
                    child: Icon(
                  Icons.add,
                  color: kWhite,
                )),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          const Divider(
            thickness: 10,
            color: Color.fromARGB(98, 0, 68, 53),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              'Price',
              style: TextStyle(
                  color: const Color.fromRGBO(4, 105, 85, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Waste Bag',
                    style: TextStyle(
                        color: const Color.fromRGBO(4, 105, 85, 0.74),
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp)),
                Row(
                  children: [
                    Text(
                      'N1,000',
                      style: TextStyle(
                          color: const Color.fromRGBO(4, 105, 85, 0.74),
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromRGBO(0, 0, 0, 0.27)),
                            borderRadius: BorderRadius.circular(7),
                            color: const Color.fromRGBO(0, 68, 53, 0.21)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 3),
                        child: Text('1',
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: teal,
                                fontWeight: FontWeight.w500))),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          GestureDetector(
            onTap: () {},
            child: Center(
              child: CustomCard(
                  child: SizedBox(
                width: Get.width * 0.5,
                height: 30,
                child: Center(
                  child: Text('Continue',
                      style: TextStyle(
                          color: kWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp)),
                ),
              )),
            ),
          )
        ],
      ),
    );
  }
}
