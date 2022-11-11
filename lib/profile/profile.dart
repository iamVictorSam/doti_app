import 'package:doti_app/helper/constants.dart';
import 'package:doti_app/home/home.dart';
import 'package:doti_app/pickup_history/pickup_history.dart';
import 'package:doti_app/settings/settings.dart';
import 'package:doti_app/subscriptions/subscriptions.dart';
import 'package:doti_app/wallet/wallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30.h),
                GestureDetector(
                    onTap: () => Get.back(),
                    child: const CustomCard(
                        child: Icon(Icons.arrow_back, color: kWhite))),
                SizedBox(height: 15.h),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(radius: 30.r),
                  trailing: GestureDetector(
                      onTap: () {},
                      child: CustomCard(
                          color: lightTeal,
                          child: SvgPicture.asset('assets/icon/edit.svg'))),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Sam Victor',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
                ),
                Text(
                  '+2348089633542',
                  style: TextStyle(fontSize: 14.sp),
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    profileCard(
                        press: () {},
                        icon: 'assets/icon/support.svg',
                        title: 'Support'),
                    SizedBox(width: 25.w),
                    profileCard(
                        press: () => Get.to(() => const WalletScreen()),
                        icon: 'assets/icon/wallet.svg',
                        title: 'Wallet'),
                    SizedBox(width: 25.w),
                    profileCard(
                        press: () => Get.to(() => const Settings()),
                        icon: 'assets/icon/settings.svg',
                        title: 'Settings'),
                  ],
                ),
                SizedBox(height: 20.h),
                ListTile(
                  leading: CustomCard(
                    color: lightTeal,
                    child: SvgPicture.asset(
                        'assets/icon/fluent_mail-20-filled.svg'),
                  ),
                  title: Text(
                    'iamvictorsam@gmail.com',
                    style: TextStyle(fontSize: 13.sp, color: teal),
                  ),
                  trailing: CustomCard(
                      child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: const Text(
                      'Verify',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: kWhite,
                      ),
                    ),
                  )),
                ),
                titleCard(
                    press: () => Get.to(() => const PickupHistory()),
                    icon: 'assets/icon/ic_baseline-history-edu.svg',
                    title: 'Pickup History'),
                titleCard(
                    press: () => Get.to(() => const Subscriptions()),
                    icon: 'assets/icon/eos-icons_subscriptions-created.svg',
                    title: 'Subscriptions'),
                titleCard(
                    press: () {},
                    icon: 'assets/icon/bxs_notification.svg',
                    title: 'Notification'),
                titleCard(
                  press: () {},
                  icon: 'assets/icon/flat-color-icons_about.svg',
                  title: 'About',
                ),
                titleCard(
                    press: () {},
                    icon: 'assets/icon/bi_exclamation-circle-fill.svg',
                    title: 'Legal'),
                titleCard(
                    press: () {},
                    icon: 'assets/icon/mdi_logout-variant.svg',
                    title: 'Logout'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget titleCard(
          {required String icon, title, required GestureTapCallback press}) =>
      Padding(
        padding: EdgeInsets.only(bottom: 10.h),
        child: ListTile(
          onTap: press,
          tileColor: const Color.fromARGB(26, 144, 238, 215),
          leading: CustomCard(
            child: SvgPicture.asset(icon),
          ),
          title: Text(
            title,
            style: TextStyle(
                color: teal, fontWeight: FontWeight.w500, fontSize: 16.sp),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 14,
            color: teal,
          ),
        ),
      );

  Widget profileCard(
          {required String icon, title, required GestureTapCallback press}) =>
      Expanded(
        child: GestureDetector(
          onTap: press,
          child: SizedBox(
            height: 65.h,
            child: CustomCard(
              color: lightTeal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(icon),
                  SizedBox(height: 5.h),
                  Text(
                    title,
                    style: TextStyle(color: teal, fontSize: 14.sp),
                  )
                ],
              ),
            ),
          ),
        ),
      );
}
