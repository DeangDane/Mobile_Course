// main.dart
import 'package:flutter/material.dart';
import 'screens/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Worktency',
      theme: ThemeData(
        fontFamily: 'Arial',
        primarySwatch: Colors.orange,
      ),
      home: const LandingPage(),
    );
  }
}