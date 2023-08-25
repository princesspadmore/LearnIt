import 'package:flutter/material.dart';
import 'package:princess_project/bottom_nav_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: ClipOval(
                      child: Image.asset(
                        'brainstormers.jpg',
                        height: 150,
                        width: 150,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Name',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const Text(
                    'Lady Ann',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'E-mail',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const Text(
                    'ladyann25@gmail.com',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Reference ID',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const Text(
                    '20739462',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Index ID',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const Text(
                    '4237822',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Contact',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const Text(
                    '+233599638713',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                  ),
                  Expanded(child: Container()),
                  bottomNavBar(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
