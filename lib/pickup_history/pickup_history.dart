import 'package:doti_app/helper/constants.dart';
import 'package:doti_app/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class PickupHistory extends StatelessWidget {
  const PickupHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
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
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Aug 2022',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.sp)),
                    const Icon(Icons.keyboard_arrow_down_rounded)
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                _walletTile()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _walletTile() => Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CustomCard(
                color: lightTeal,
                child: SvgPicture.asset(
                    'assets/icon/fluent-emoji-high-contrast_delivery-truck.svg')),
            title: const Text('Alakahia, Port Harcourt'),
            subtitle: Text(
              '13:06 23.05.22',
              style: TextStyle(
                  fontSize: 12.sp, color: const Color.fromRGBO(0, 0, 0, 1)),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pickup Finished',
                  style: TextStyle(
                      fontSize: 13.sp,
                      color: const Color.fromRGBO(24, 128, 109, 1)),
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15,
                ),
                const Divider(
                  height: 0,
                )
              ],
            ),
          ),
        ],
      );
}
