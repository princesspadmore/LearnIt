import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:princess_project/groups_screen.dart';
import 'package:princess_project/home_screen.dart';
import 'package:princess_project/login_screen.dart';
import 'package:princess_project/notifications_screen.dart';
import 'package:princess_project/profile_screen.dart';
import 'package:princess_project/register_screen.dart';
import 'package:princess_project/search_screen.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LearnIt',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        primaryColor: Colors.blue,
        primarySwatch: Colors.lightBlue
      ),
      home: const LoginScreen(),
    );
  }
}
