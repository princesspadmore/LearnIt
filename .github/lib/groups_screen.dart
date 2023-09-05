import 'package:flutter/material.dart';
import 'package:princess_project/bottom_nav_bar.dart';

class GroupsScreen extends StatefulWidget {
  const GroupsScreen({super.key});

  @override
  State<GroupsScreen> createState() => _GroupsScreenState();
}

class _GroupsScreenState extends State<GroupsScreen> {
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
                  const Center(
                    child: Text(
                      'Groups',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                  const Center(
                    child: Text(
                      'You are in 3 groups',
                      style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ListTile(
                    tileColor: Colors.white,
                    title: const Text('SharkBoys'),
                    subtitle: Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'not3.jpg',
                            fit: BoxFit.fill,
                            width: 50,
                            height: 50,
                          ),
                        ),
                        const SizedBox(width: 20,),
                        ClipOval(
                          child: Image.asset(
                            'not3.jpg',
                            fit: BoxFit.fill,
                            width: 50,
                            height: 50,
                          ),
                        ),
                        const SizedBox(width: 20,),
                        ClipOval(
                          child: Image.asset(
                            'not3.jpg',
                            fit: BoxFit.fill,
                            width: 50,
                            height: 50,
                          ),
                        ),
                        const SizedBox(width: 20,),
                        ClipOval(
                          child: Image.asset(
                            'not3.jpg',
                            fit: BoxFit.fill,
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  ListTile(
                    tileColor: Colors.white,
                    title: const Text('Braininess'),
                    subtitle: Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'not3.jpg',
                            fit: BoxFit.fill,
                            width: 50,
                            height: 50,
                          ),
                        ),
                        const SizedBox(width: 20,),
                        ClipOval(
                          child: Image.asset(
                            'not3.jpg',
                            fit: BoxFit.fill,
                            width: 50,
                            height: 50,
                          ),
                        ),
                        const SizedBox(width: 20,),
                        ClipOval(
                          child: Image.asset(
                            'not3.jpg',
                            fit: BoxFit.fill,
                            width: 50,
                            height: 50,
                          ),
                        ),
                        const SizedBox(width: 20,),
                        ClipOval(
                          child: Image.asset(
                            'not3.jpg',
                            fit: BoxFit.fill,
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  ListTile(
                    tileColor: Colors.white,
                    title: const Text('Distinction'),
                    subtitle: Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'not3.jpg',
                            fit: BoxFit.fill,
                            width: 50,
                            height: 50,
                          ),
                        ),
                        const SizedBox(width: 20,),
                        ClipOval(
                          child: Image.asset(
                            'not3.jpg',
                            fit: BoxFit.fill,
                            width: 50,
                            height: 50,
                          ),
                        ),
                        const SizedBox(width: 20,),
                        ClipOval(
                          child: Image.asset(
                            'not3.jpg',
                            fit: BoxFit.fill,
                            width: 50,
                            height: 50,
                          ),
                        ),
                        const SizedBox(width: 20,),
                        ClipOval(
                          child: Image.asset(
                            'not3.jpg',
                            fit: BoxFit.fill,
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
