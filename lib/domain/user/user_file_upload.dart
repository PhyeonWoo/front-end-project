import 'package:aet/controller/photo_upload_controller.dart';
import 'package:aet/controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( // GetMaterialApp을 사용하여 GetX 기능을 전체 앱에 적용
      home: UserPhotoUploadScreen(), // UserPhotoUploadScreen을 home으로 설정
    );
  }
}

class UserPhotoUploadScreen extends StatelessWidget {
  final UserController u = Get.put(UserController());

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
            ElevatedButton(
              onPressed: u.pickAndUploadImage,
              child: Text("사진 선택 및 업로드"),
            ),
            SizedBox(height: 20),
            Obx(() => Text(u.uploadStatus.value)),
          ],
        ),
      ),
    );
  }
}
