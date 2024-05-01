import 'package:flutter/material.dart';
import 'package:tech_mart/screens/home.dart';
import 'package:tech_mart/screens/recoverAccount.dart';
import 'package:tech_mart/screens/signUp.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         height: MediaQuery.of(context).size.height,
        
        width: MediaQuery.of(context).size.width,
        
        decoration: const BoxDecoration(
        
          image: DecorationImage(
        
            image: AssetImage("assets/images/tech.jpg"),
        
            fit: BoxFit.cover,
        
          ),        
            ),      
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [       
              SizedBox(
                height: 100,
              ),
              CircleAvatar(                
                radius: 70,
                child: Icon(Icons.person_3_rounded,size: 100,)               
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Please enter email',
                    prefixIcon: const Icon(Icons.email,color: Color.fromARGB(244, 237, 146, 90), ),
                    border: const OutlineInputBorder(),                   
                    fillColor: Colors.white,
                    filled: true,
                    ),
                    
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Please enter password',
                    prefixIcon: const Icon(Icons.lock,color:  Color.fromARGB(244, 237, 146, 90),),
                    border: const OutlineInputBorder(),                    
                    fillColor: Colors.white,
                    filled: true,
                    ),
                obscureText: true,
              ),

              SizedBox(height: 30,),


              ElevatedButton(                             

              onPressed: () {
                      Navigator.pushReplacement(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const home(),
                      ),
                    );
              },
              style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(244, 237, 146, 90),),

              child: Text('Login')
              
              ),
             
             SizedBox(height: 20,),

              TextButton(
              onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const accRecover(),
                      ),
                    );
              },
              child: Text("Forgot Password?" )),

               SizedBox(height: 5,),

              TextButton(
              onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const signUp(),
                      ),
                    );
              },
              child: Text("Dont have an account? Create One !" ))
            ],
          ),
        ),
      ),
    );
  }
}
