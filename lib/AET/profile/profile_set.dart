import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aet/controller/user_controller.dart';

class ProfileSet extends StatelessWidget {
  final UserController u = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    if (u.principal.value.memberPhoto.isNotEmpty && u.principal.value.memberPhoto.first['imageBytes'] != null) {
      Uint8List imageBytes = u.principal.value.memberPhoto.first['imageBytes'];
      return Image.memory(imageBytes, fit: BoxFit.cover);
    } else {
      return Image.asset('assets/images/userprofile.svg', fit: BoxFit.cover);
    }
  }
}
