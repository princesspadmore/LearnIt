import 'package:flutter/material.dart';
import 'package:princess_project/bottom_nav_bar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
                      'Search Results',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                  const Center(
                    child: Text(
                      'We have 4 available groups for you',
                      style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    child: Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'not3.jpg',
                            fit: BoxFit.fill,
                            width: 50,
                            height: 50,
                          ),
                        ),
                        const Icon(Icons.add),
                        const Text('Create a group'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ListTile(
                    tileColor: Colors.white,
                    title: const Text('The Best Group'),
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
                    title: const Text('The Learners'),
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
                    title: const Text('Brainstormers'),
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
                    title: const Text('StudyTok'),
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
