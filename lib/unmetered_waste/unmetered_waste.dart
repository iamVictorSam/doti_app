import 'package:camera/camera.dart';
import 'package:doti_app/helper/constants.dart';
import 'package:doti_app/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../waste_capture/capture.dart';

class UnmeteredWasteScreen extends StatefulWidget {
  const UnmeteredWasteScreen({Key? key}) : super(key: key);

  @override
  State<UnmeteredWasteScreen> createState() => _UnmeteredWasteScreenState();
}

class _UnmeteredWasteScreenState extends State<UnmeteredWasteScreen> {
  late List<CameraDescription> _cameras;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD0E5E1),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Row(
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      child: const Text(
                        'Take a  clear photo of the item',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.48),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 17,
                      backgroundColor:
                          const Color.fromRGBO(255, 255, 255, 0.54),
                      child:
                          SvgPicture.asset('assets/icon/bolt.svg', height: 17),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 255, 255, 0.46),
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image:
                              AssetImage('assets/image/ezgif-5-cddaedc2f6.gif'),
                          fit: BoxFit.cover)),
                  height: Get.height * 0.7,
                ),
                GestureDetector(
                  onTap: () async {
                    await availableCameras().then(
                      (value) => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CamCapture(cameras: value),
                        ),
                      ),
                    );
                  },
                  child: SvgPicture.asset(
                    'assets/icon/capture.svg',
                    // height: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
