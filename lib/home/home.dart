import 'package:doti_app/helper/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 15.h,
          ),
          ListTile(
            title: Text(
              'Welcome Back,',
              style: TextStyle(fontSize: 16.sp),
            ),
            subtitle: Text(
              'Sam,',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
            trailing: Container(
              decoration: BoxDecoration(
                  color: lightTeal, borderRadius: BorderRadius.circular(8)),
              padding: const EdgeInsets.all(8),
              child: SvgPicture.asset('assets/icon/notification.svg'),
            ),
          ),
          Container(
              decoration: BoxDecoration(
                  color: teal, borderRadius: BorderRadius.circular(8)),
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 35.h,
                  ),
                  Text(
                    'Recycling of of waste\ncan save\nthe environment\nfrom hazard ',
                    style: TextStyle(
                        fontSize: 22.sp,
                        color: kWhite,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'So recycle your trash today',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: kWhite,
                    ),
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: kWhite, borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Waste Pickup',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff4DAB96),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Set a specific location\nfor waste pickup',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.black,
                              ),
                            ),
                            SvgPicture.asset("assets/icon/recycle.svg"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          SizedBox(height: 15.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Services',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500)),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('see all',
                      style: TextStyle(
                          color: teal,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500)),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: teal,
                    size: 18,
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CustomCard(
                  color: lightTeal,
                  child: SizedBox(
                    height: 100,
                    width: 120,
                  )),
              CustomCard(
                  color: lightTeal,
                  child: SizedBox(
                    height: 100,
                    width: 120,
                  )),
            ],
          ),
          SizedBox(height: 15.h),
          const Text('Your activity',
              style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 10.h),
          const ActivityTiles(),
        ]),
      ),
    )));
  }
}

class ActivityTiles extends StatelessWidget {
  const ActivityTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CustomCard(
            color: lightTeal,
            child: SvgPicture.asset(
              'assets/icon/ci_location.svg',
              color: teal,
            ),
          ),
          title: const Text(
            'Golf Estate Arena',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          subtitle: const Text(
            'Nonsi Amadi street, Portharcourt',
            style: TextStyle(),
          ),
          trailing: const Icon(Icons.arrow_forward_ios_rounded, color: teal),
        ),
        const Divider(
          height: 0,
        )
      ],
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      required this.child,
      this.padding = 8,
      this.radius = 8,
      this.color = teal});

  final Widget child;
  final double padding, radius;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(radius)),
      padding: EdgeInsets.all(padding),
      child: child,
    );
  }
}
