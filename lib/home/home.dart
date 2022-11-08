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
        child: Column(children: [
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
                children: [
                  Text(
                    'Recycling of of waste\ncan save\nthe environment\nfrom hazard ',
                    style: TextStyle(
                        fontSize: 22.sp,
                        color: kWhite,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'So recycle your trash today',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: kWhite,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: teal, borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Text(
                          'Waste Pickup',
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: const Color(0xff4DAB96),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Set a spefic location\nfor waste pickup',
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: const Color(0xff4DAB96),
                              ),
                            ),
                            SvgPicture.asset("assets/recycle.svg"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Services'),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('see all'),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: teal,
                  )
                ],
              )
            ],
          ),
          Row(
            children: const [
              CustomCard(child: SizedBox()),
            ],
          )
        ]),
      ),
    )));
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key, required this.child, this.padding = 8, this.radius = 8});

  final Widget child;
  final double padding, radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: teal, borderRadius: BorderRadius.circular(radius)),
      padding: EdgeInsets.all(padding),
      child: child,
    );
  }
}
