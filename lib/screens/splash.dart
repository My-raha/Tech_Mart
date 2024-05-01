import 'dart:async';

import 'package:tech_mart/screens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:tech_mart/screens/splash2.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<splash> {
  @override
  void initState() {
    super.initState();
    //Navigate to the home screen after 10 seconds

    Timer(const Duration(seconds: 7), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const splash2(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:  SfRadialGauge( 
          animationDuration: 5000,
          backgroundColor : Color.fromARGB(255, 236, 137, 6),
           enableLoadingAnimation:true,
           axes: [RadialAxis(
            radiusFactor: 0.45,           
            showLabels: false,
            showAxisLine: true,
            startAngle: 0,
            endAngle: 360,
            

           )],     
        ),
      ),
    );
  }
}
