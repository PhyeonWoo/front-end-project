import 'package:get/get.dart';

class NavigationController extends GetxController {
  var currentIndex = 0.obs; // RxInt를 사용하여 반응형 상태로 만듭니다.

  void changeIndex(int index) {
    currentIndex.value = index; // 인덱스 변경 메소드
  }
}
