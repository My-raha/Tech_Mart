import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class contactUs extends StatefulWidget {
  const contactUs({super.key});

  @override
  State<contactUs> createState() => _contactUsState();
}

class _contactUsState extends State<contactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(244, 237, 146, 90),
        toolbarHeight: 40,
        title: Text('Contact Us'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.italic,
        ),      
      ),
      body: Container(
        
      ),
    );
  }
}