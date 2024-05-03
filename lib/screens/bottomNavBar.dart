import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tech_mart/screens/cart.dart';
import 'package:tech_mart/screens/home.dart';
import 'package:tech_mart/screens/profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 1;

  late List<Widget> pages;

  void initState() {
    pages = [
      profile(),
      home(),
      cart(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
          index: 1,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          buttonBackgroundColor: Colors.blue,
          color: Color.fromARGB(244, 238, 116, 15),
          backgroundColor: Colors.transparent,
          height: 53,
          items: [
            Icon(
              Icons.person,
              color: Colors.white,
            ),
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_bag,
              color: Colors.white,
            ),
          ]),
    );
  }
}
