import 'package:flutter/material.dart';
import 'package:princess_project/groups_screen.dart';
import 'package:princess_project/home_screen.dart';
import 'package:princess_project/notifications_screen.dart';
import 'package:princess_project/profile_screen.dart';
import 'package:princess_project/search_screen.dart';

final List<Widget> _pages = [
  const HomeScreen(),
  const GroupsScreen(),
  const SearchScreen(),
  const NotificationScreen(),
  const ProfileScreen()
];

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(0, 255, 255, 100),
        selectedItemColor: const Color.fromRGBO(0, 255, 255, 100),
        unselectedItemColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: '',
          ),
        ],
      ),
    );
  }
}

