import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<Map<String, dynamic>> getUserData(String email) async {
  final userRef = FirebaseFirestore.instance.collection('users').doc(email);
  final userSnapshot = await userRef.get();
  if (userSnapshot.exists) {
    return userSnapshot.data() as Map<String, dynamic>;
  }
  return {};
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final String email = FirebaseAuth.instance.currentUser!.email.toString();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
      future: getUserData(email),
      builder:
          (BuildContext context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (snapshot.hasData) {
          final userData = snapshot.data!;
          final String name = userData['username'] as String? ?? 'name not available';
          final String program = userData['program'] as String? ?? 'program not available';
          final String reference = userData['referenceNumber'] as String? ?? "referenceNumber not available";
          final String imagePath = userData['imagePath'] as String? ??
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4R9w1OwQjbnun15jlbPEDqicrbEsAnBeSQOFpvuEE2A&s';
          final String contact = userData['contact'] as String? ?? 'No number available';
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
                            child: Image.network(
                              imagePath,
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
                        Text(
                          name,
                          style: const TextStyle(color: Colors.blueGrey, fontSize: 15),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'E-mail',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          email,
                          style: const TextStyle(color: Colors.blueGrey, fontSize: 15),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Reference ID',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          reference,
                          style: const TextStyle(color: Colors.blueGrey, fontSize: 15),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Program',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          program,
                          style: const TextStyle(color: Colors.blueGrey, fontSize: 15),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Contact',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          contact,
                          style: const TextStyle(color: Colors.blueGrey, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        } else {
          return const Text("Check your network connection");
        }
      },
    );
  }
}
