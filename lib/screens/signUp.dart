import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tech_mart/screens/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _createUserWithEmailAndPassword() async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      print('User signed up: ${userCredential.user}');
    } catch (e) {
      print('Failed to sign up: $e');
      String errorMessage = 'An error occurred. Please try again later.';
      if (e is FirebaseAuthException) {
        switch (e.code) {
          case 'email-already-in-use':
            errorMessage = 'This email is already connected to an account.';
            break;
        }
      }
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.blue.withOpacity(0.6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            title: Center(child: Text('Sign Up Failed')),
            content: Text(errorMessage),
          );
        },
      );
    }
  }

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
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 90),
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
                SizedBox(height: 70),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: TextField(
                    controller: _firstNameController,
                    decoration: InputDecoration(
                      hintText: 'Please enter first name',
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    style: TextStyle(fontSize: 16),
                    textAlignVertical: TextAlignVertical.center,
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: TextFormField(
                    controller: _lastNameController,
                    decoration: InputDecoration(
                      hintText: 'Please enter second name',
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    style: TextStyle(fontSize: 16),
                    textAlignVertical: TextAlignVertical.center,
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: TextField(
                    controller: _emailController,
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
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: 'Create a password',
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Color.fromARGB(244, 237, 146, 90),
                      ),
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    style: TextStyle(fontSize: 16),
                    textAlignVertical: TextAlignVertical.center,
                    textAlign: TextAlign.start,
                    obscureText: true,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Confirm password',
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Color.fromARGB(244, 237, 146, 90),
                      ),
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    style: TextStyle(fontSize: 16),
                    textAlignVertical: TextAlignVertical.center,
                    textAlign: TextAlign.start,
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 22),
                ElevatedButton(
                  onPressed: _createUserWithEmailAndPassword,
                  child: Text(
                    'Submit',
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
                SizedBox(height: 10),
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
      ),
    );
  }
}
