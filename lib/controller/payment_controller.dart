import 'package:get/get.dart';

class PaymentController extends GetxController {
  var show = true.obs; // 바텀 시트 표시 여부를 결정하는 상태 변수
  var selectedIndex = 0.obs; // 선택된 인덱스
  var prices = <num>[0, 5000, 10000, 15000, 20000].obs; // 가격 리스트
  RxNum selectedChoice = RxNum(0); // RxNum으로 선언

  // 선택된 인덱스를 설정하는 메서드
  void selectChip(int index) {
    selectedIndex.value = index;
    selectedChoice.value = prices[selectedIndex.value];
  }
}
