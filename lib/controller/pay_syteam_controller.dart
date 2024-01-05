import 'package:get/get.dart';

class PaymentController extends GetxController {
  var isOption0Checked = false.obs;
  var isOption1Checked = false.obs;
  var isOption2Checked = false.obs;
  var isOption3Checked = false.obs;

  void toggleOption0() {
    // 옵션 0의 상태를 토글하고, 나머지 옵션들의 상태를 옵션 0과 동일하게 설정합니다.
    isOption0Checked.toggle(); // 이는 isOption0Checked.value = !isOption0Checked.value; 와 동일합니다.
    isOption1Checked.value = isOption0Checked.value;
    isOption2Checked.value = isOption0Checked.value;
    isOption3Checked.value = isOption0Checked.value;
  }

  void toggleOption1() {
    isOption1Checked.toggle();
    updateOption0Status();
  }

  void toggleOption2() {
    isOption2Checked.toggle();
    updateOption0Status();
  }

  void toggleOption3() {
    isOption3Checked.toggle();
    updateOption0Status();
  }

  // 모든 옵션 1, 2, 3이 켜져 있으면 옵션 0도 켜고, 아니면 끄는 메소드입니다.
  void updateOption0Status() {
    if (isOption1Checked.value && isOption2Checked.value && isOption3Checked.value) {
      isOption0Checked.value = true;
    } else {
      isOption0Checked.value = false;
    }
  }
}
