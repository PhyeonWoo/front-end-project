import 'package:aet/controller/photo_upload_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserPhotoUploadScreen extends StatelessWidget {
  final PhotoUploadController photoUploadController = Get.put(PhotoUploadController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("사진 업로드"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ElevatedButton(
            //   onPressed: photoUploadController.pickAndUploadImage,
            //   child: Text("사진 선택 및 업로드"),
            // ),
            // SizedBox(height: 20),
            // Obx(() => Text(photoUploadController.uploadStatus.value)),
          ],
        ),
      ),
    );
  }
}
