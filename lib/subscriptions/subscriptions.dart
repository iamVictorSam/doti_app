import 'package:doti_app/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helper/constants.dart';

class Subscriptions extends StatelessWidget {
  const Subscriptions({Key? key}) : super(key: key);

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
        title: const Text('Subscriptions',
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Choose A Plan that\nsuit you',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: const Color.fromRGBO(1, 55, 43, 1),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10.h,
              ),
              const Text(
                'We set out with a single mission,to create the easiest disposal service for our clients',
                textAlign: TextAlign.center,
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
          const Divider(),
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
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Start weekly plan',
                style: TextStyle(color: kWhite),
              ),
            )),
          ),
          SizedBox(
            height: 7.h,
          ),
        ],
      ));
}
