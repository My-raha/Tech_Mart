import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_mart/screens/login.dart';

class accRecover extends StatefulWidget {
  const accRecover({Key? key}) : super(key: key);

  @override
  State<accRecover> createState() => _accRecoverState();
}

class _accRecoverState extends State<accRecover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/satellite.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              SizedBox(
                height: 159,
              ),
              Text(
                'Recover Account',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                'We will send you an email to help you reset your password',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Please enter email',
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Color.fromARGB(244, 237, 146, 90),
                    ),
                    border: InputBorder.none,
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  style: TextStyle(fontSize: 16),
                  textAlignVertical: TextAlignVertical.center,
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 22,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Send Email',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(244, 237, 146, 90),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const Login(),
                    ),
                  );
                },
                child: Text(
                  "Already have an account? Sign In!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
