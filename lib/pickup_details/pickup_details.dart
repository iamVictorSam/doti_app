import 'package:doti_app/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class PickupDetails extends StatelessWidget {
  const PickupDetails({Key? key}) : super(key: key);

  final Color _color = const Color.fromRGBO(100, 193, 171, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            _appBar(),
            SizedBox(height: 15.h),
            ListTile(
              title: Text(
                'Pickup from Rupokwu',
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                'Sat, 17 Sep 2022',
                style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color.fromRGBO(0, 0, 0, 0.58)),
              ),
              trailing: const CircleAvatar(),
            ),
            SizedBox(
              height: 15.h,
            ),
            Image.asset('assets/image/map-img.png'),
            SizedBox(
              height: 15.h,
            ),
            _detailsTile(
                icon: 'assets/icon/carbon_airport-location.svg',
                title: 'Port harcourt',
                sub: '06:32'),
            const Divider(),
            _detailsTile(
                icon: 'assets/icon/ci_location.svg',
                title: '14 Epara-Ekingbo Road',
                sub: '06:32'),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const Text(
                  'Addtional information can be found in your email'),
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: CustomCard(
                color: _color,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: const Text(
                    'Get Help with recycler',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            const Divider(
              thickness: 10,
              color: Color.fromRGBO(4, 105, 85, 0.04),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'Payment Method',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            _paymentMethod(
                icon: 'assets/icon/heroicons-solid_cash.svg',
                title: 'Wallet',
                sub: 'N1,700  '),
            const Divider(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('Package Weekly'),
                trailing: Text('N1,700'),
              ),
            )
          ]),
        ),
      ),
    );
  }

  //assets\icon\carbon_airport-location.svg

  Widget _detailsTile({required icon, title, sub}) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CustomCard(
            color: _color,
            child: SvgPicture.asset(icon),
          ),
          title: Text(title),
          subtitle: Text(
            sub,
            style: const TextStyle(color: Colors.grey),
          ),
        ),
      );

  Widget _paymentMethod({required icon, title, sub}) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CustomCard(
            color: _color,
            child: SvgPicture.asset(icon),
          ),
          title: Text(title),
          trailing: Text(
            sub,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
          ),
        ),
      );

  Widget _appBar() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(0, 0, 0, 0.08),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.arrow_back,
                      size: 18,
                    ),
                  ),
                ),
                SvgPicture.asset('assets/icon/dot.svg'),
              ],
            ),
          ],
        ),
      );
}
