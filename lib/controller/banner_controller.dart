import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BannerController extends GetxController with WidgetsBindingObserver {
  var currentPage = 0.obs;
  Timer? _timer;
  PageController pageController = PageController();
  final int totalPage = 3;

  @override
  void onInit() {
    super.onInit();
    WidgetsBinding.instance.addObserver(this);
    _startAutoSlide();
  }

  @override
  void onClose() {
    _timer?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.onClose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.paused || state == AppLifecycleState.detached) {
      _timer?.cancel();
    } else if (state == AppLifecycleState.resumed) {
      _startAutoSlide();
    }
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      if (pageController.hasClients) {
        int nextPage = currentPage.value + 1;
        if (nextPage >= totalPage) {
          nextPage = 0;
        }
        currentPage.value = nextPage;
        pageController.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      }
    });
  }

  void changePage(int index) {
    currentPage.value = index;
    _timer?.cancel();
    _startAutoSlide();
  }

  void resetPageController() {
    pageController.dispose();
    pageController = PageController(initialPage: currentPage.value);
  }
}