import 'package:get/get.dart';

class NoticeEventController extends GetxController {
  var selectedValue = 1.obs;

  void selectValue(int value) {
    selectedValue.value = value;
  }
}
