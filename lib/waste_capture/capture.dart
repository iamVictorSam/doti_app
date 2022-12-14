import 'package:doti_app/waste_capture/waste_capture.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:get/get.dart';

import '../helper/constants.dart';
import '../waste_preview/waste_preview.dart';

class CamCapture extends StatefulWidget {
  const CamCapture({super.key, required this.cameras});

  final List? cameras;
  @override
  State<CamCapture> createState() => _CamCaptureState();
}

class _CamCaptureState extends State<CamCapture> {
  late CameraController controller;
  XFile? picture;

  @override
  void initState() {
    startCamera();
    super.initState();
  }

  void startCamera() {
    controller = CameraController(widget.cameras![0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            print('User denied camera access.');
            break;
          default:
            print('Handle other errors.');
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (controller.value.isInitialized) {
      return Scaffold(
        body: SizedBox(
          height: Get.height,
          child: Stack(
            children: [
              CameraPreview(controller),
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () => Get.off(const WasteCapture()),
                          child: const CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.red,
                            child: Icon(
                              Icons.close,
                              size: 25,
                              color: kWhite,
                            ),
                          )),
                      GestureDetector(
                          onTap: () async {
                            picture = await controller.takePicture();
                            setState(() {});
                            if (picture != null) {
                              Get.off(WastePreview(picture: picture));
                            }
                          },
                          child: const CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.green,
                            child: Icon(Icons.camera, size: 25, color: kWhite),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}
