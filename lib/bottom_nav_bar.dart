import 'package:flutter/material.dart';

Widget bottomNavBar(){
  return BottomNavigationBar(
    backgroundColor: const Color.fromRGBO(0, 255, 255, 0),
    type: BottomNavigationBarType.fixed,
    elevation: 0,
    unselectedItemColor: Colors.black,
    selectedItemColor: Colors.white,
    items: const [
      BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined), label: ''),
      BottomNavigationBarItem(
          icon: Icon(Icons.group_outlined), label: ''),
      BottomNavigationBarItem(
          icon: Icon(Icons.notifications_outlined), label: ''),
      BottomNavigationBarItem(
          icon: Icon(Icons.person_outlined), label: ''),
    ],
  );
}