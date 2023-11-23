import 'package:flutter/foundation.dart';

class Navigation extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void setCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners(); // 상태 변경을 알림
  }
}
