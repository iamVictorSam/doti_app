import 'package:doti_app/helper/constants.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: teal,
      body: Center(
        child: Image.asset('assets/image/animation_500_l9bhn527.gif'),
      ),
    );
  }
}
