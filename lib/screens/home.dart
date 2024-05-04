import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tech_mart/screens/aboutUs.dart';
import 'package:tech_mart/screens/cart.dart';
import 'package:tech_mart/screens/categories.dart';
import 'package:tech_mart/screens/contactUs.dart';
import 'package:tech_mart/screens/login.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              iconColor: Color.fromARGB(244, 237, 146, 90),
              leading: const Icon(Icons.account_box_rounded),
              title: const Text(
                'My Account',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
              subtitle: Text(
                'Mairaha',
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
            ),
            Divider(
              height: 30,
            ),
            ListTile(
              iconColor: Color.fromARGB(244, 237, 146, 90),
              leading: const Icon(Icons.shopping_cart_checkout_rounded),
              title: const Text('My Orders'),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => cart(),
                    ))
              },
            ),
            ListTile(
              iconColor: Color.fromARGB(244, 237, 146, 90),
              leading: const Icon(Icons.info_outline_rounded),
              title: const Text('About Us'),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => aboutUs(),
                    ))
              },
            ),
            ListTile(
              iconColor: Color.fromARGB(244, 237, 146, 90),
              leading: const Icon(Icons.chat_bubble),
              title: const Text('Talk to Us'),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => contactUs(),
                    ))
              },
            ),
            ListTile(
              iconColor: Color.fromARGB(244, 237, 146, 90),
              leading: const Icon(Icons.exit_to_app_sharp),
              title: const Text('Log Out'),
              onTap: () async {
                await FirebaseAuth.instance.signOut();

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(244, 238, 116, 15),
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
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  padding: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search for a product',
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color.fromARGB(244, 237, 146, 90),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const Categories(),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 15, top: 10),
                            child: Text(
                              "   See More..",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(244, 237, 146, 90),
                                fontSize: 20,
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, left: 10, right: 10, bottom: 5),
                        margin: EdgeInsets.only(
                          right: 20,
                        ),
                        height: 130,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(130, 244, 237, 146),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/pad.jpg',
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Gaming',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, left: 10, right: 10, bottom: 5),
                        margin: EdgeInsets.only(
                          right: 20,
                        ),
                        height: 130,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(130, 244, 237, 146),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/lapi1.jpg',
                                height: 75,
                              ),
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            Text(
                              'Laptops',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, left: 10, right: 10, bottom: 5),
                        margin: EdgeInsets.only(
                          right: 20,
                        ),
                        height: 130,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(130, 244, 237, 146),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/pc2.jpg',
                                height: 75,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'PCs',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, left: 10, right: 10, bottom: 5),
                        margin: EdgeInsets.only(
                          right: 20,
                        ),
                        height: 130,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(130, 244, 237, 146),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/speaker.jpg',
                                height: 75,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Audio',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, left: 10, right: 10, bottom: 5),
                        margin: EdgeInsets.only(
                          right: 20,
                        ),
                        height: 130,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(130, 244, 237, 146),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/camera1.jpg',
                                height: 75,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Cameras',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discover',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "See More..",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(244, 237, 146, 90),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, left: 10, right: 10, bottom: 5),
                        margin: EdgeInsets.only(
                          right: 20,
                        ),
                        height: 250,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(130, 244, 237, 146),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/blender.jpg',
                                height: 150,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'LG Blender',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\Ksh 1790',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    color: Colors.blue,
                                    child: Icon(
                                      Icons.add_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, left: 10, right: 10, bottom: 5),
                        margin: EdgeInsets.only(
                          right: 20,
                        ),
                        height: 250,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(130, 244, 237, 146),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/juicer.jpg',
                                height: 150,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Juicer',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\Ksh 15,000',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    color: Colors.blue,
                                    child: Icon(
                                      Icons.add_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, left: 10, right: 10, bottom: 5),
                        margin: EdgeInsets.only(
                          right: 20,
                        ),
                        height: 250,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(130, 244, 237, 146),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/pad1.jpg',
                                height: 130,
                              ),
                            ),
                            SizedBox(
                              height: 29,
                            ),
                            Text(
                              'DualShock 5',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\Ksh 6150',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    color: Colors.blue,
                                    child: Icon(
                                      Icons.add_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, left: 10, right: 10, bottom: 5),
                        margin: EdgeInsets.only(
                          right: 20,
                        ),
                        height: 250,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(130, 244, 237, 146),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/fridge.jpg',
                                height: 150,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Fridge',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\Ksh 70,000',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    color: Colors.blue,
                                    child: Icon(
                                      Icons.add_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "Products",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(244, 237, 146, 90),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, left: 10, right: 10, bottom: 5),
                        margin: EdgeInsets.only(
                          right: 20,
                        ),
                        height: 250,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(130, 244, 237, 146),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/ps5.jpg',
                                height: 150,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'PS 5',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\Ksh 78,000',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    color: Colors.blue,
                                    child: Icon(
                                      Icons.add_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, left: 10, right: 10, bottom: 5),
                        margin: EdgeInsets.only(
                          right: 20,
                        ),
                        height: 250,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(130, 244, 237, 146),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/earpods.jpg',
                                height: 150,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Earpods',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\Ksh 1,950',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    color: Colors.blue,
                                    child: Icon(
                                      Icons.add_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, left: 10, right: 10, bottom: 5),
                        margin: EdgeInsets.only(
                          right: 20,
                        ),
                        height: 250,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(130, 244, 237, 146),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/drone.jpg',
                                height: 130,
                              ),
                            ),
                            SizedBox(
                              height: 26,
                            ),
                            Text(
                              'Drone',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Ksh 182,085',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    color: Colors.blue,
                                    child: Icon(
                                      Icons.add_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, left: 10, right: 10, bottom: 5),
                        margin: EdgeInsets.only(
                          right: 20,
                        ),
                        height: 250,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(130, 244, 237, 146),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/firestick.jpg',
                                height: 130,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              'Firestick TV',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\Ksh 8,600',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    color: Colors.blue,
                                    child: Icon(
                                      Icons.add_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
