import 'package:flutter/material.dart';
import 'package:tech_mart/screens/bottomNavBar.dart';
import 'package:tech_mart/screens/home.dart';
import 'package:tech_mart/screens/login.dart';
import 'package:tech_mart/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: home(),
    );
  }
}

