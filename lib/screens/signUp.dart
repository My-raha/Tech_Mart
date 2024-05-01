import 'package:flutter/material.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(244, 237, 146, 90),
        toolbarHeight: 40,
        title: Text('Create an Account !'),
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

          image: AssetImage("assets/images/tech.jpg"),

          fit: BoxFit.cover,

        ),

    ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Please enter first name',                     
                    border: const OutlineInputBorder(),                   
                    fillColor: Colors.white,
                    filled: true,
                    hoverColor: Colors.blue),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Please enter second name',                     
                    border: const OutlineInputBorder(),                   
                    fillColor: Colors.white,
                    filled: true,
                    hoverColor: Colors.blue),
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
                    hoverColor: Colors.blue),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Create a password',
                    prefixIcon: const Icon(Icons.lock,color: Color.fromARGB(244, 237, 146, 90), ),
                    border: const OutlineInputBorder(),                   
                    fillColor: Colors.white,
                    filled: true,
                    hoverColor: Colors.blue),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Confirm password',
                    prefixIcon: const Icon(Icons.lock,color:Color.fromARGB(244, 237, 146, 90),),
                    border: const OutlineInputBorder(),                   
                    fillColor: Colors.white,
                    filled: true,
                    hoverColor: Colors.blue),
              ), 

              SizedBox(height: 22,),


              ElevatedButton(
                onPressed: () {}, 
                child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}
