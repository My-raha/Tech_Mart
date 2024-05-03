import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; 

import 'package:tech_mart/screens/aboutUs.dart';
import 'package:tech_mart/screens/bottomNavBar.dart';
import 'package:tech_mart/screens/contactUs.dart';
import 'package:tech_mart/screens/home.dart';
import 'package:tech_mart/screens/login.dart';
import 'package:tech_mart/screens/recoverAccount.dart';
import 'package:tech_mart/screens/signUp.dart';
import 'package:tech_mart/screens/splash.dart';

void main() async {  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Adjust theme properties as needed
        // For translucent background, you might need to adjust scaffoldBackgroundColor
        scaffoldBackgroundColor: Colors.transparent,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.transparent),
        useMaterial3: true,
      ),
      // Specify the initial screen here
      home: const accRecover(),
    );
  }
}
