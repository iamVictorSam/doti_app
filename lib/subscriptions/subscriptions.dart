import 'package:doti_app/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helper/constants.dart';

class Subscriptions extends StatelessWidget {
  const Subscriptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Choose A Plan  that\nsuit you',
                style: TextStyle(
                    color: teal, fontSize: 16.sp, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 7.h,
              ),
              const Text(
                'We set out with a single mission,to create the easiest disposal service for our clients',
                style: TextStyle(color: Color.fromRGBO(1, 55, 43, 1)),
              ),
              SizedBox(
                height: 20.h,
              ),
              _subCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _subCard() => Container(
      decoration: BoxDecoration(
          color: const Color.fromRGBO(226, 251, 245, 0.37),
          border: Border.all(color: const Color.fromRGBO(0, 68, 53, 0.18)),
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Weekly',
            style: TextStyle(
                color: teal, fontSize: 18.sp, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            '2 days a week',
            style: TextStyle(
              color: const Color.fromRGBO(0, 68, 53, 1),
              fontSize: 13.sp,
            ),
          ),
          Center(
            child: Text(
              'N5,000',
              style: TextStyle(
                  color: const Color.fromRGBO(240, 221, 127, 1),
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 7.h,
          ),
          const Center(
            child: CustomCard(
                child: Text(
              'Start weekly plan',
              style: TextStyle(color: kWhite),
            )),
          )
        ],
      ));
}
