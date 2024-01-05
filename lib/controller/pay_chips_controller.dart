import 'package:get/get.dart';

class PayChipsController extends GetxController {
  var selectedIndex = 0.obs;
  var selectedRadio = 0.obs; // Radio 버튼을 위한 새로운 상태 변수

  void selectPay(int index) {
    selectedIndex.value = index;
    if (index == 1) { // 특정 CustomPayChoice 선택 시 Radio 값도 업데이트
      selectedRadio.value = 1;
    }
  }

  void setSelectedRadio(int value) {
    selectedRadio.value = value; // Radio 버튼의 상태를 업데이트하는 메소드
    if (value != 1){
      selectedIndex.value = 0;
    }
  }
}
