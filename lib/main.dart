import 'dart:io';
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

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid?
  await Firebase.initializeApp(
    options: const FirebaseOptions(
    apiKey: "AIzaSyA4LdviZdx8T0km2B_IT_BMBL-XlNZniy8", 
    appId: "1:598331214210:android:5164e1c06cd87b676f679b",
    messagingSenderId: "598331214210",
    projectId:"tech-mart-fa6bf", )
  )
     :await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.transparent),
        useMaterial3: true,
      ),
      home: splash(),
    );
  }
}
