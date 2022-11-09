import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PickupDetails extends StatelessWidget {
  const PickupDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const ListTile(),
        SizedBox(height: 15.h),
        ListTile(
          title: Text(
            'Pickup from Rupokwu',
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            'Sat, 17 Sep 2022',
            style: TextStyle(
                fontSize: 14.sp, color: const Color.fromRGBO(0, 0, 0, 0.58)),
          ),
          trailing: const CircleAvatar(),
        ),
        SizedBox(
          height: 15.h,
        )
        Image.asset('assets/image/map-img.png')
      ]),
    );
  }
}
