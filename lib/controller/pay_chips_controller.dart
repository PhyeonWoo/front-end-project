import 'package:get/get.dart';

class PayChoiceChipController extends GetxController {
  var show = true.obs; // 바텀 시트용
  var selectedValue = 1.obs; // 선택된 금액을 관리하는 Observable 변수

  void selectValue(int value) {
    selectedValue.value = value; // 선택된 금액 업데이트
  }
}
