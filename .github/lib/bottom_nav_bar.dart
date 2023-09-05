import 'package:flutter/material.dart';
import 'package:princess_project/groups_screen.dart';
import 'package:princess_project/home_screen.dart';
import 'package:princess_project/notifications_screen.dart';
import 'package:princess_project/profile_screen.dart';

Widget bottomNavBar(BuildContext context) {
  return BottomNavigationBar(
    backgroundColor: const Color.fromRGBO(0, 255, 255, 0),
    type: BottomNavigationBarType.fixed,
    elevation: 0,
    unselectedItemColor: Colors.black,
    selectedItemColor: Colors.white,
    items: [
      BottomNavigationBarItem(
        icon: IconButton(
            icon: const Icon(Icons.home_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HomeScreen();
                  },
                ),
              );
            }),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: IconButton(
            icon: const Icon(Icons.group_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const GroupsScreen();
                  },
                ),
              );
            }),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const NotificationScreen();
                  },
                ),
              );
            }),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: IconButton(
            icon: const Icon(Icons.person_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ProfileScreen();
                  },
                ),
              );
            }),
        label: '',
      ),
    ],
  );
}
