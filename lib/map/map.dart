import 'package:doti_app/helper/constants.dart';
import 'package:doti_app/home/home.dart';
import 'package:doti_app/profile/profile.dart';
import 'package:doti_app/waste_selection/waste_selection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final FocusNode _focus = FocusNode();

  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _focus.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    super.dispose();
    _focus.removeListener(_onFocusChange);
    _focus.dispose();
  }

  void _onFocusChange() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Image.asset(
            'assets/image/map.png',
            fit: BoxFit.cover,
            width: Get.width,
          ),
          Positioned(
            top: 0,
            child: Container(
              height: Get.height * 0.15,
              width: Get.width,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              decoration: const BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 15,
                      spreadRadius: 10,
                      offset: Offset(0, 0.75),
                    )
                  ]),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                      focusNode: _focus,
                      style: const TextStyle(color: teal),
                      decoration: InputDecoration(
                        hintText: 'Enter pickup location',
                        hintStyle: const TextStyle(color: teal),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 15.0, right: 15),
                          child: _focus.hasFocus == true
                              ? const Icon(Icons.arrow_back, color: teal)
                              : SvgPicture.asset(
                                  'assets/icon/search.svg',
                                  height: 16,
                                ),
                        ),
                        prefixIconConstraints:
                            const BoxConstraints(maxHeight: 16),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20),
                        suffixIcon: Visibility(
                            visible: _focus.hasFocus,
                            child: GestureDetector(
                              onTap: () => Get.to(() => const WasteSelection()),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 8.0,
                                  horizontal: 5,
                                ),
                                child: CustomCard(
                                    child: Icon(Icons.arrow_forward,
                                        color: kWhite)),
                              ),
                            )),
                        filled: true,
                        fillColor: const Color.fromRGBO(246, 246, 246, 1),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(0, 0, 0, 0.08)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(0, 0, 0, 0.08)),
                        ),
                      ),
                    )),
                    Visibility(
                      visible: !_focus.hasFocus,
                      child: Row(
                        children: [
                          SizedBox(width: 20.w),
                          GestureDetector(
                            onTap: () => Get.to(() => const Profile()),
                            child: const CustomCard(
                                child: SizedBox(
                              height: 30,
                              width: 30,
                              child: FlutterLogo(),
                            )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
