import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onIndexChanged;

  CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onIndexChanged,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      elevation: 2,
      selectedItemColor: Colors.green,
      selectedLabelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      unselectedItemColor: Colors.black,
      unselectedLabelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      showUnselectedLabels: true,
      currentIndex: currentIndex,
      onTap: onIndexChanged,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on),
          label: 'Second',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.child_friendly),
          label: 'Third',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.qr_code),
          label: 'Fourth',
        ),
        // 다른 탭 아이템들 추가...
      ],
    );
  }
}
