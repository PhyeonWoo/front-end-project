import 'package:get/get.dart';

class CheckboxController extends GetxController {
  var isAllChecked = false.obs;
  var isChecked1 = false.obs;
  var isChecked2 = false.obs;
  var isChecked3 = false.obs;
  var isChecked4 = false.obs;

  void toggleCheckbox(int index, bool value) {
    switch (index) {
      case 1:
        isChecked1.value = value;
        break;
      case 2:
        isChecked2.value = value;
        break;
      case 3:
        isChecked3.value = value;
        break;
      case 4:
        isChecked4.value = value;
        break;
    }
    updateAllCheckedStatus();
  }

  void toggleAllChecked(bool value) {
    isAllChecked.value = value;
    if (value) {
      isChecked1.value = true;
      isChecked2.value = true;
      isChecked3.value = true;
      isChecked4.value = true;
    } else {
      isChecked1.value = false;
      isChecked2.value = false;
      isChecked3.value = false;
      isChecked4.value = false;
    }
  }

  void updateAllCheckedStatus() {
    if (isChecked1.value && isChecked2.value && isChecked3.value && isChecked4.value) {
      isAllChecked.value = true;
    } else {
      isAllChecked.value = false;
    }
  }
}