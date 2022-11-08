import 'package:doti_app/helper/constants.dart';
import 'package:doti_app/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MeteredWaste extends StatelessWidget {
  const MeteredWaste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Get.height * 0.1,
        ),
        Image.asset('assets/image/waste-bin.png'),
        SizedBox(
          height: Get.height * 0.1,
        ),
        const Text(
          'Select waste quantity',
          style: TextStyle(),
        ),
        Row(
          children: [
            Container(
                decoration: BoxDecoration(
                    border: Border.all(color: teal),
                    borderRadius: BorderRadius.circular(7),
                    color: const Color.fromARGB(227, 0, 68, 53)),
                child: const Text('1')),
            const CustomCard(child: Icon(Icons.remove)),
            const CustomCard(child: Icon(Icons.add)),
          ],
        ),
        const Divider(
          thickness: 10,
          color: Color(0xff004435),
        ),
        const Text('Price'),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            const Text('Waste Bag'),
            Row(
              children: [
                const Text('N1,000'),
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: teal),
                        borderRadius: BorderRadius.circular(7),
                        color: const Color.fromARGB(227, 0, 68, 53)),
                    child: const Text('1')),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        const CustomCard(
            child: Text('Continue', style: TextStyle(color: kWhite)))
      ],
    );
  }
}
