import 'package:flutter/material.dart';

import '../helper/constants.dart';
import 'components/body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: teal,
        centerTitle: true,
        title: const Text("Sign Up"),
      ),
      body: const SignUpBody(),
    );
  }
}
