main.dart:
import 'package:flutter/material.dart'; import 'login.dart';
void main() { runApp(MaterialApp(
debugShowCheckedModeBanner: false, home:Scaffold(
appBar: AppBar(
title: const Text("Practical - 5"), backgroundColor: Colors.yellowAccent, foregroundColor: Colors.black87,
),

body: const LoginPage(),
),
),
);
}


login.dart:
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget { const LoginPage ({super.key});

@override
Widget build(BuildContext context) { return SingleChildScrollView( child: Column(
children: [
const SizedBox(height: 75,), Container(
height: 200,
width: 250,
child: Image.asset("assets/images/login.png"),
),
const SizedBox(height: 15,),
const Text("Login to your account",), const SizedBox(height: 20), Container(
margin: const EdgeInsets.symmetric(horizontal: 20), padding: const EdgeInsets.symmetric(horizontal: 10), decoration: BoxDecoration(
border: Border.all(color: Colors.black, width: 1.5),
),
child: const TextField( decoration: InputDecoration(
hintText: "Username and Email",
),
	spellCheckConfiguration: SpellCheckConfiguration(	
 
misspelledSelectionColor: Colors.red),
),
),
const SizedBox(height: 20,), Container(
margin: const EdgeInsets.symmetric(horizontal: 20), padding: const EdgeInsets.symmetric(horizontal: 10), decoration: BoxDecoration(
border: Border.all(color: Colors.black, width: 1.5),
),
child: const TextField( obscureText: true, decoration: InputDecoration( hintText: "Password",
),
),
),
const SizedBox(height: 30,), Container(
height: 50,
width: 350,
child: OutlinedButton( onPressed: () { print('Button Passed');
},
style: ButtonStyle(
foregroundColor: MaterialStateProperty.all(Colors.black87), backgroundColor: MaterialStateProperty.all(Colors.red),
),
child: const Text("Login", style: TextStyle(fontSize: 20),),
),
)
],
),
);
}
}
