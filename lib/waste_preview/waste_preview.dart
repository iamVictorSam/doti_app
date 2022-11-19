import 'dart:io';

import 'package:camera/camera.dart';
import 'package:doti_app/helper/constants.dart';
import 'package:doti_app/helper/default_btn.dart';
import 'package:doti_app/home/home.dart';
import 'package:doti_app/successScreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class WastePreview extends StatefulWidget {
  const WastePreview({
    super.key,
    required this.picture,
  });

  final XFile? picture;

  @override
  State<WastePreview> createState() => _WastePreviewState();
}

class _WastePreviewState extends State<WastePreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD0E5E1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  _customAppBar(),
                  Stack(
                    children: [
                      Container(
                        color: kWhite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: Get.height * 0.55,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.file(
                            File(widget.picture!.path),
                            height: Get.height * 0.5,
                            width: Get.width,
                          ),
                        ),
                      ),
                      Positioned(
                          left: 50,
                          child: CustomCard(
                              color: Colors.black,
                              child: SvgPicture.asset(
                                  'assets/icon/icon-reload.svg'))),
                      Positioned(
                          right: 50,
                          child: CustomCard(
                              color: const Color.fromRGBO(0, 108, 89, 1),
                              child:
                                  SvgPicture.asset('assets/icon/upload.svg'))),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  DefaultBtn(
                    press: () => Get.to(() => const SuccessScreen()),
                    text: 'Submit',
                  ),
                ],
              )),
        ),
      ),
    );
  }

  Widget _customAppBar() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Get.back(),
            child: const CustomCard(
              color: kWhite,
              child: Icon(Icons.arrow_back, size: 16),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 0.46),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: const Text(
              'Your can retake the picture',
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 0.48),
              ),
            ),
          ),
          const SizedBox(),
        ],
      );
}
