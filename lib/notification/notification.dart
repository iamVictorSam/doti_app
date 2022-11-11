import 'package:doti_app/helper/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Notification extends StatelessWidget {
  const Notification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  const Text('Notification',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(0, 0, 0, 0.29),
                      )),
                  const Text('Mark As Read',
                      style: TextStyle(
                        color: teal,
                      )),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              const Text(
                'Today',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.54),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const NotificationCard(),
              SizedBox(
                height: 20.h,
              ),
              const NotificationCard(),
            ]),
          ),
        ),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  const NotificationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color.fromRGBO(0, 0, 0, 0.1),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Notification',
                style: TextStyle(
                    color: teal, fontWeight: FontWeight.w500, fontSize: 18.sp),
              ),
              Row(
                children: [
                  const Text(
                    '20mins ago',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.39),
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  const Icon(Icons.circle, size: 15)
                ],
              )
            ],
          ),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscingelit. Risus tempor, velit mattis et mauris vel. Nec risus, ipsum scelerisque dui dictum.',
            style: TextStyle(
              color: Color.fromRGBO(0, 31, 73, 0.42),
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
