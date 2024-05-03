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
        title: Text('About Us'),
        titleTextStyle: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 26),
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
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          'Our Journey',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20),
                          alignment: Alignment.center,
                          height: 450,
                          width: 370,
                          decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              'Tech Mart has grown from a humble     idea to a trusted name in ecommerce.    Our commitment to transparency, quality, and customer satisfaction has guided us every step of the way.\n Join us as we continue to shape the future of technology, \n One satisfied customer at a time. \n Welcome to Tech Mart: \n Where Innovation Meets Excellence.',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          'Our Mission',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20),
                          alignment: Alignment.center,
                          height: 450,
                          width: 370,
                          decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              ' Here Tech Mart, \n Our mission is simple yet profound: \n We aim to empower our customers \n With seamless access to cutting-edge technology \n While providing unparalleled service and support.',
                              style: TextStyle(
                                letterSpacing: 4,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              margin: EdgeInsets.only(left: 50),
              child: Text(
                '© 2024 Tech Mart. All rights reserved.',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 20,
                  letterSpacing: 2,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
