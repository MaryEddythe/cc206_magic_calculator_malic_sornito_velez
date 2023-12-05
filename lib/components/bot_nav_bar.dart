import 'package:flutter/material.dart';

class BottomNavBar {
  static BottomNavigationBar buildBottomNavigationBar(
      BuildContext context, int botNavBarOption, void Function(int) onTabTapped) {
    return BottomNavigationBar(
      selectedItemColor: const Color(0xFFFFFFFF),
      backgroundColor: const Color(0xFF0D1333),
      unselectedItemColor: const Color(0xFF8A8A8A),
      currentIndex: botNavBarOption,
      onTap: onTabTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_work_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.newspaper),
          label: 'Newsstand',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.face_outlined),
          label: 'Profile',
        ),
      ],
    );
  }
}