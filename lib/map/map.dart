import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(),
      Container(
        child: Row(
          children: [
            const TextField(),
            const SizedBox(width: 10),
            Container(),
          ],
        ),
      ),
    ]);
  }
}
