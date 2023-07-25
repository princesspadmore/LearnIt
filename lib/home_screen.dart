import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 50,
                    width: 350,
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: TextField(
                            keyboardType: TextInputType.text,
                            controller: searchController,
                            enableSuggestions: true,
                            autocorrect: true,
                            decoration: const InputDecoration(
                              labelText: 'Search',
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                        ),
                        Expanded(child: Container()),
                        GestureDetector(
                          onTap: () {},
                          child: ClipOval(
                            child: Image.asset(
                              'brainstormers.jpg',
                              width: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'group.jpg',
                  fit: BoxFit.cover,
                  height: 330,
                  width: 350,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Popular Groups',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      GroupCard(),
                      SizedBox(
                        width: 10,
                      ),
                      GroupCard(),
                      SizedBox(
                        width: 10,
                      ),
                      GroupCard(),
                      SizedBox(
                        width: 10,
                      ),
                      GroupCard(),
                    ],
                  ),
                ),
                Expanded(child: Container()),
                BottomNavigationBar(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GroupCard extends StatelessWidget {
  const GroupCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 150,
      width: 150,
      child: Column(
        children: [
          Image.asset(
            'grp1.jpg',
            height: 100,
            width: 150,
            fit: BoxFit.cover,
          ),
          const Text(
            'Group Name',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          )
        ],
      ),
    );
  }
}
