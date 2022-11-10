import 'package:doti_app/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        const Text('Addtional information can be found in your email'),
        SizedBox(
          height: 15.h,
        ),
        CustomCard(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: const Text(
              'Get Help with recycler',
              style: TextStyle(fontWeight: FontWeight.bold),
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
        // ListTile(
        //   contentPadding: EdgeInsets.zero,
        //   leading: CustomCard(
        //     child: SvgPicture.asset(icon),
        //   ),
        //   title: Text(headline6),
        //   subtitle: Text(
        //     sub,
        //     style: const TextStyle(color: Colors.grey),
        //   ),
        // )
      ]),
    );
  }

  //assets\icon\carbon_airport-location.svg

  Widget _detailsTile({required icon, title, sub}) => ListTile(
        contentPadding: EdgeInsets.zero,
        leading: CustomCard(
          child: SvgPicture.asset(icon),
        ),
        title: Text(title),
        subtitle: Text(
          sub,
          style: const TextStyle(color: Colors.grey),
        ),
      );
}
