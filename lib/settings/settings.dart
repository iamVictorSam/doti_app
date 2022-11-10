import 'package:doti_app/helper/constants.dart';
import 'package:doti_app/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

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
        title: const Text('Settings',
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                _settingsCard(title: 'General', widgets: [
                  _customListTile(
                      icon: 'assets/icon/warn.svg',
                      title: 'Warn me before exiting')
                ]),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 10,
            color: Color.fromRGBO(4, 105, 85, 0.04),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                _settingsCard(title: 'Push Notifications', widgets: [
                  _customListTile(
                      icon: 'assets/icon/bx_message-alt-dots.svg',
                      title: 'Messages'),
                  _customListTile(
                      icon: 'assets/icon/save.svg',
                      title: 'Saved search alert'),
                  _customListTile(
                      icon: 'assets/icon/fluent_alert-on-20-regular.svg',
                      title: 'Bump up alert'),
                  _customListTile(
                      icon: 'assets/icon/pajamas_review-checkmark.svg',
                      title: 'Review')
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _customListTile({required String icon, title}) => ListTile(
        contentPadding: EdgeInsets.zero,
        leading: SizedBox(
          height: 35,
          width: 35,
          child: CustomCard(
              color: const Color.fromRGBO(4, 105, 85, 1),
              child: SvgPicture.asset(icon)),
        ),
        title: Text(
          title,
          style: const TextStyle(color: teal),
        ),
        trailing: Checkbox(
          activeColor: teal,
          onChanged: (value) {},
          value: true,
        ),
      );

  Widget _settingsCard(
          {required String title, required List<Widget> widgets}) =>
      Container(
          decoration: BoxDecoration(
              color: const Color.fromRGBO(0, 68, 53, 0.17),
              border: Border.all(color: const Color.fromRGBO(4, 105, 85, 0.26)),
              borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: teal, fontWeight: FontWeight.w500, fontSize: 16.sp),
              ),
              Column(
                children: widgets,
              )
            ],
          ));
}
