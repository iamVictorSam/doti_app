import 'package:doti_app/helper/constants.dart';
import 'package:doti_app/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MeteredWaste extends StatelessWidget {
  const MeteredWaste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
            _truckDetails(),
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
            _payment(),
            SizedBox(
              height: 10.h,
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
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget _payment() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            const Text(
              'Payment method',
              style: TextStyle(color: teal),
            ),
            SizedBox(
              height: 5.h,
            ),
            BorderBox(
              color: const Color.fromRGBO(238, 255, 251, 1),
              child: ListTile(
                  leading: SvgPicture.asset('assets/icon/pay_wallet.svg'),
                  title: const Text(
                    'Pay with wallet',
                    style: TextStyle(color: teal),
                  ),
                  trailing: Radio(
                    activeColor: teal,
                    groupValue: true,
                    value: true,
                    onChanged: (value) {},
                  )),
            ),
            SizedBox(
              height: 10.h,
            ),
            BorderBox(
              color: const Color.fromRGBO(238, 255, 251, 1),
              child: ListTile(
                  leading: SvgPicture.asset('assets/icon/pay_card.svg'),
                  title: const Text(
                    'Pay with Card',
                    style: TextStyle(color: teal),
                  ),
                  trailing: Radio(
                    activeColor: teal,
                    groupValue: true,
                    value: true,
                    onChanged: (value) {},
                  )),
            ),
          ],
        ),
      );

  Widget _truckDetails() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Lookman waste Deposit',
              style: TextStyle(
                color: teal,
              ),
            ),
            Text(
              'Honda vx truck wonder',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.sp,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    BorderBox(
                      color: const Color.fromRGBO(0, 68, 53, 0.58),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('999-232-3323',
                            style: TextStyle(
                                fontSize: 18.sp, fontWeight: FontWeight.w500)),
                      ),
                    ),
                    SizedBox(width: 6.w),
                    BorderBox(
                      color: const Color.fromRGBO(0, 68, 53, 0.58),
                      child: SvgPicture.asset('assets/icon/copy.svg'),
                    ),
                    SizedBox(width: 6.w),
                    SizedBox(
                      height: 35.h,
                      width: 35.h,
                      child: BorderBox(
                        color: const Color.fromRGBO(0, 68, 53, 0.58),
                        child: SvgPicture.asset('assets/icon/phone.svg'),
                      ),
                    ),
                    SizedBox(width: 16.w),
                  ],
                ),
                BorderBox(
                  color: const Color(0xff18806D),
                  child: Image.asset(
                    'assets/image/imgI.png',
                    height: 30.h,
                    width: 30,
                  ),
                ),
              ],
            )
          ],
        ),
      );
}

class BorderBox extends StatelessWidget {
  const BorderBox({Key? key, required this.child, required this.color})
      : super(key: key);

  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromRGBO(0, 0, 0, 0.27)),
          borderRadius: BorderRadius.circular(7),
          color: color),
      padding: const EdgeInsets.all(4),
      child: child,
    );
  }
}
