import 'package:doti_app/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../helper/constants.dart';

class WasteSelection extends StatelessWidget {
  const WasteSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('How would  like to deposit\nyour waste?',
              style: TextStyle(
                  color: teal, fontWeight: FontWeight.bold, fontSize: 20.sp)),
          SizedBox(height: 15.h),
          CustomCard(
              child: ListTile(
            leading: CustomCard(
                child: ListTile(
              leading: SvgPicture.asset('assets/icon/unmetered.svg'),
              title: const Text(
                'Unmetered Waste',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff00FDBE),
                ),
              ),
              trailing: SvgPicture.asset('assets/icon/circle-check.svg'),
            )),
          )),
          SizedBox(height: 15.h),
          CustomCard(
              child: ListTile(
            leading: CustomCard(
                child: ListTile(
              leading: SvgPicture.asset('assets/icon/wastebasket.svg'),
              title: const Text(
                'Unmetered Waste',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff00FDBE),
                ),
              ),
              trailing: SvgPicture.asset('assets/icon/circle-check.svg'),
            )),
          )),
          SizedBox(height: 20.h),
          const Text('')
        ],
      ),
    );
  }
}
