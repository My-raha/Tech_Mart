import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tech_mart/screens/aboutUs.dart';
import 'package:tech_mart/screens/basket.dart';
import 'package:tech_mart/screens/categories.dart';
import 'package:tech_mart/screens/contactUs.dart';
import 'package:tech_mart/screens/login.dart';
import 'package:tech_mart/screens/myAccount.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              tileColor: Color.fromARGB(244, 237, 146, 90),
              leading: const Icon(Icons.account_box_rounded),
              title: const Text('My Account'),
              subtitle: Text('Mairaha'),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => myAccount(),
                    ))
              },
            ),
            Divider(
              height: 20,
            ),
            SizedBox(
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
                      builder: (BuildContext context) => basket(),
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
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => login(),
                    ))
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(244, 237, 146, 90),
        title: Text(
          'Tech_Mart',
          style: TextStyle(fontSize: 25),
        ),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/guy.jpg"),
            fit: BoxFit.cover,
          ),
        ),
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
                margin: EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
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
                            "See More..",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(244, 237, 146, 90),
                              fontSize: 15,
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
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 5),
                      margin: EdgeInsets.only(right: 20,),
                      height: 130,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(244, 237, 146, 90),
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
                           SizedBox(height: 10,),

                          Text('Gaming',style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 5),
                      margin: EdgeInsets.only(right: 20,),
                      height: 130,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(244, 237, 146, 90),
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
                           SizedBox(height: 11,),

                          Text('Laptops',style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 5),
                      margin: EdgeInsets.only(right: 20,),
                      height: 130,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(244, 237, 146, 90),
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
                           SizedBox(height: 10,),

                          Text('PCs',style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 5),
                      margin: EdgeInsets.only(right: 20,),
                      height: 130,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(244, 237, 146, 90),
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
                           SizedBox(height: 10,),

                          Text('Audio',style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 5),
                      margin: EdgeInsets.only(right: 20,),
                      height: 130,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(244, 237, 146, 90),
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
                           

                          Text('Cameras',style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
