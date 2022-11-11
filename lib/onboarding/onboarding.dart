import 'package:doti_app/home/home.dart';
import 'package:doti_app/map/map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../helper/constants.dart';
import 'components/contents.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "image": "assets/image/ezgif-3-28c9ecbc3f.gif",
      "title":
          'Doti Doti is here to fight against\nurban waste crisis and eliminate\nthe environment hazard',
      "text":
          "Get an overview of how you are performing and motivate yourself to achieve even more.",
    },
    {
      "image": "assets/image/ezgif-2-15d078752b.gif",
      "title":
          'Doti Doti is here to fight against\nurban waste crisis and eliminate\nthe environment hazard',
      "text":
          "Get an overview of how you are performing\nand motivate yourself to achieve even more.",
    },
    {
      "image": "assets/image/ezgif-3-28c9ecbc3f.gif",
      "title":
          'Doti Doti is here to fight against\nurban waste crisis and eliminate\nthe environment hazard',
      "text":
          "Get an overview of how you are performing and motivate yourself to achieve even more.",
    },
  ];

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

// #

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            children: <Widget>[
              PageView.builder(
                controller: pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => OnboardingContent(
                  image: splashData[index]["image"],
                  title: splashData[index]["title"],
                  text: splashData[index]['text'],
                ),
              ),
              Positioned(
                bottom: 150.h,
                right: 0,
                left: 0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                    splashData.length,
                    (index) => buildDot(index: index),
                  ),
                ),
              ),
              Positioned(
                bottom: 60.h,
                left: 20.w,
                child: GestureDetector(
                  onTap: () {
                    Get.offAll(() => const MapScreen());
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(color: kWhite, fontSize: 17.sp),
                  ),
                ),
              ),
              Positioned(
                bottom: 50.h,
                right: 20.w,
                child: GestureDetector(
                  onTap: () => Get.offAll(() => const MapScreen()),
                  child: const CustomCard(
                      color: Color.fromRGBO(65, 58, 0, 1),
                      padding: 13,
                      child: Text('Recycle Now',
                          style: TextStyle(
                              color: kWhite, fontWeight: FontWeight.w500))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    var color = kWhite;
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        color: currentPage == index
            ? color
            : const Color(0xFFD8D8D8).withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
