import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class aboutUs extends StatefulWidget {
  const aboutUs({super.key});

  @override
  State<aboutUs> createState() => _aboutUsState();
}

class _aboutUsState extends State<aboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(244, 237, 146, 90),
        toolbarHeight: 40,
        title: Text('About Us'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.italic,
        ),      
      ),

      body: Container(
      height: MediaQuery.of(context).size.height,

      width: MediaQuery.of(context).size.width,

      decoration: const BoxDecoration(

        image: DecorationImage(

          image: AssetImage("assets/images/satellite.jpg"),

          fit: BoxFit.cover,

        ),

    ),
      ),

    );
  }
}