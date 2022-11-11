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
          "Get an overview of how you are performing\nand motivate yourself to achieve even more.",
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
          "Get an overview of how you are performing\nand motivate yourself to achieve even more.",
    },
  ];

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

// #DEBF8D

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
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                    splashData.length,
                    (index) => buildDot(index: index),
                  ),
                ),
              ),
              Positioned(
                bottom: 50.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Get.offAll(() => const MapScreen());
                        },
                        child: Text(
                          'Skip',
                          style: TextStyle(color: kWhite, fontSize: 17.sp),
                        ),
                      ),

                      const CustomCard(
                          color: Color.fromRGBO(65, 58, 0, 1),
                          padding: 10,
                          child: Text('Recycle Now',
                              style: TextStyle(
                                  color: kWhite, fontWeight: FontWeight.w500))),
                    ],
                  ),
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
      height: 6,
      width: currentPage == index ? 35 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? color : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
