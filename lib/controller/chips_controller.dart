import 'package:get/get.dart';

class ChoiceChipController extends GetxController {
  var selectedIndex = 0.obs;

  void selectChip(int index) {
    selectedIndex.value = index;
  }
}