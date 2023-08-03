import 'package:flutter/material.dart';
import 'package:princess_project/bottom_nav_bar.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 500),
        child: Center(
          child: Container(
            width: 350,
            color: const Color.fromRGBO(0, 255, 255, 100),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Notifications',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ListTile(
                    tileColor: Colors.white,
                    leading: ClipOval(
                      child: Image.asset(
                        'grp1.jpg',
                        fit: BoxFit.fill,
                        width: 50,
                        height: 50,
                      ),
                    ),
                    title: const Text(
                      'The Brainstormers',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                        'There is a scheduled meeting for 3pm at the Library'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    tileColor: Colors.white,
                    leading: ClipOval(
                      child: Image.asset(
                        'grp1.jpg',
                        fit: BoxFit.fill,
                        width: 50,
                        height: 50,
                      ),
                    ),
                    title: const Text(
                      'The Lerners',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                        'There is a scheduled meeting at the Hall 7 study room at 12pm'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    tileColor: Colors.white,
                    leading: ClipOval(
                      child: Image.asset(
                        'grp1.jpg',
                        fit: BoxFit.fill,
                        width: 50,
                        height: 50,
                      ),
                    ),
                    title: const Text(
                      'The Best Group',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                        'There is a scheduled meeting for 1pm at the Bani villas study room'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    tileColor: Colors.white,
                    leading: ClipOval(
                      child: Image.asset(
                        'grp1.jpg',
                        fit: BoxFit.fill,
                        width: 50,
                        height: 50,
                      ),
                    ),
                    title: const Text(
                      'StudyTok',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                        'There is a scheduled meeting for 10am at the COS Library tomorrow'),
                  ),
                  Expanded(child: Container()),
                  bottomNavBar(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
