import 'package:camera/camera.dart';
import 'package:face_detection/main.dart';
import 'package:flutter/material.dart';

class FaceReco extends StatefulWidget {
  const FaceReco({super.key});

  @override
  State<FaceReco> createState() => _FaceRecoState();
}

class _FaceRecoState extends State<FaceReco> {
  late CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            // Handle access errors here.
            break;
          default:
            // Handle other errors here.
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
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_rounded))),
      body: Center(
        child: Container(
          width: 300,
          height: 500,
          color: Colors.yellow,
          child: CameraPreview(controller),
        ),
      ),
    );
  }
}
