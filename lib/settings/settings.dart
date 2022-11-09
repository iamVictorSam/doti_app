import 'package:doti_app/helper/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          _settingsCard(title: 'General', widgets: [
            _customListTile(
                icon: 'assets/icon/warn.svg', title: 'Warn me before exiting')
          ]),
          SizedBox(
            height: 10.h,
          ),
          const Divider(
            thickness: 10,
            color: Color.fromRGBO(4, 105, 85, 0.04),
          ),
          SizedBox(
            height: 10.h,
          ),
          _settingsCard(title: 'Push Notifications', widgets: [
            _customListTile(
                icon: 'assets/icon/bx_message-alt-dots.svg', title: 'Messages'),
            _customListTile(
                icon: 'assets/icon/save.svg', title: 'Saved search alert'),
            _customListTile(
                icon: 'assets/icon/fluent_alert-on-20-regular.svg',
                title: 'Bump up alert'),
            _customListTile(
                icon: 'assets/icon/pajamas_review-checkmark.svg',
                title: 'Review')
          ]),
        ],
      ),
    );
  }

  Widget _customListTile({required String icon, title}) => ListTile(
        contentPadding: EdgeInsets.zero,
        leading: SvgPicture.asset(icon),
        title: Text(
          title,
          style: const TextStyle(color: teal),
        ),
        trailing: Checkbox(
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
            children: [
              Text(
                title,
                style:
                    const TextStyle(color: teal, fontWeight: FontWeight.w500),
              ),
              Column(
                children: widgets,
              )
            ],
          ));
}
