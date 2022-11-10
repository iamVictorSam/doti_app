import 'package:doti_app/helper/constants.dart';
import 'package:doti_app/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(4, 105, 85, 1),
        automaticallyImplyLeading: false,
        leading: const Icon(
          Icons.arrow_back,
          size: 18,
        ),
        centerTitle: true,
        title: const Text('Wallet',
            style: TextStyle(
              color: Color.fromRGBO(122, 215, 181, 1),
            )),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                _walletCard(),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Service',
                  style: TextStyle(fontSize: 18.sp),
                ),
                SizedBox(
                  height: 15.h,
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CustomCard(
                    color: lightTeal,
                    child: SvgPicture.asset(
                        'assets/icon/game-icons_card-pickup.svg'),
                  ),
                  title: Text(
                    'Pickup',
                    style: TextStyle(color: teal, fontSize: 16.sp),
                  ),
                  trailing: CustomCard(
                      color: const Color(0xff64C1AB),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: const Text(
                          'Instant Pickup',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: teal,
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 10,
            color: Color.fromRGBO(144, 238, 215, 0.29),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                SizedBox(height: 15.h),
                _sectionTitle(),
                SizedBox(
                  height: 15.h,
                ),
                _walletTile(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _walletTile() => ListTile(
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
        trailing: Text(
          'Pickeup Finished',
          style: TextStyle(
              fontSize: 13.sp, color: const Color.fromRGBO(24, 128, 109, 1)),
        ),
      );

  Widget _sectionTitle() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Latest Pickups',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500)),
          Row(
            children: [
              const Text(
                'See All',
                style: TextStyle(color: Color.fromRGBO(4, 128, 109, 1)),
              ),
              SizedBox(
                width: 5.w,
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 14,
              )
            ],
          ),
        ],
      );

  Widget _walletCard() => CustomCard(
      radius: 20,
      color: const Color.fromRGBO(4, 105, 85, 1),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
        width: Get.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Wallet Balance',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      color: lightTeal,
                    )),
                Row(
                  children: [
                    Text('N 5,200',
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: lightTeal,
                          fontWeight: FontWeight.w500,
                        )),
                    SizedBox(
                      width: 5.w,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.remove_red_eye_outlined,
                          size: 15,
                          color: lightTeal,
                        ))
                  ],
                ),
                CustomCard(
                    color: const Color.fromRGBO(100, 193, 171, 1),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.add,
                          color: Color.fromRGBO(34, 133, 113, 1),
                          size: 16,
                        ),
                        Text(
                          'Add funds',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ))
              ],
            ),
            Image.asset('assets/image/animation_500_l9cj8g3w.gif',
                height: 100.h),
          ],
        ),
      ));
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromRGBO(4, 105, 85, 1),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(7),
            bottomRight: Radius.circular(7),
          )),
      child: const ListTile(
          leading: CustomCard(
        child: Icon(Icons.arrow_back),
      )),
    );
  }
}
