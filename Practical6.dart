main.dart:
import 'package:flutter/material.dart'; import 'signup.dart';
void main() { runApp(MaterialApp(
debugShowCheckedModeBanner: false, home:Scaffold(
appBar: AppBar(
title: const Text("Practical - 6"), backgroundColor: Colors.red, foregroundColor: Colors.black87,
),

body: const SignUpPage(),
),
),
);
}

signup.dart:
import 'package:flutter/material.dart'; import 'package:flutter/services.dart';
class SignUpPage extends StatelessWidget { const SignUpPage({super.key});
@override
Widget build(BuildContext context) { return SingleChildScrollView( child: Column(
children: [
const SizedBox(height: 75,), Container(
height: 150,
width: 150,
child: Image.asset("assets/images/signup.jpeg"),
),
const SizedBox(height: 15,),
const Text("Register New Account",), const SizedBox(height: 20), Container(
margin: const EdgeInsets.symmetric(horizontal: 20), padding: const EdgeInsets.symmetric(horizontal: 10), decoration: BoxDecoration(
border: Border.all(color: Colors.black, width: 1.5),), child: const TextField(
decoration: InputDecoration( hintText: "Name",),
spellCheckConfiguration: SpellCheckConfiguration( misspelledSelectionColor: Colors.red), ),),
const SizedBox(height: 20,),
 
Container(
margin: const EdgeInsets.symmetric(horizontal: 20), padding: const EdgeInsets.symmetric(horizontal: 10), decoration: BoxDecoration(
border: Border.all(color: Colors.black, width: 1.5),
),
child: const TextField( decoration: InputDecoration( hintText: "Email Address",
),
spellCheckConfiguration: SpellCheckConfiguration( misspelledSelectionColor: Colors.red),
),
),
const SizedBox(height: 20,), Container(
margin: const EdgeInsets.symmetric(horizontal: 20), padding: const EdgeInsets.symmetric(horizontal: 10), decoration: BoxDecoration(
border: Border.all(color: Colors.black, width: 1.5),
),
child: TextField(
keyboardType: TextInputType.number, inputFormatters: [ FilteringTextInputFormatter.digitsOnly,
],
decoration: InputDecoration( hintText: "Mobile Number",
),
spellCheckConfiguration: SpellCheckConfiguration( misspelledSelectionColor: Colors.red),
),
),
const SizedBox(height: 20,), Container(
margin: const EdgeInsets.symmetric(horizontal: 20), padding: const EdgeInsets.symmetric(horizontal: 10), decoration: BoxDecoration(
border: Border.all(color: Colors.black, width: 1.5),
),
child: const TextField( obscureText: true, decoration: InputDecoration( hintText: "Password",
),
spellCheckConfiguration: SpellCheckConfiguration( misspelledSelectionColor: Colors.red),
),
),
const SizedBox(height: 20,), Container(
margin: const EdgeInsets.symmetric(horizontal: 20), padding: const EdgeInsets.symmetric(horizontal: 10), decoration: BoxDecoration(
border: Border.all(color: Colors.black, width: 1.5),
),
 
child: const TextField( obscureText: true, decoration: InputDecoration(
hintText: "Confirm Password",
),
spellCheckConfiguration: SpellCheckConfiguration( misspelledSelectionColor: Colors.red),
),
),
const SizedBox(height: 30,), Container(
height: 50,
width: 350,
child: OutlinedButton( onPressed: () { print('Button Passed');
},
style: ButtonStyle(
foregroundColor: MaterialStateProperty.all(Colors.black87), backgroundColor: MaterialStateProperty.all(Colors.yellow), ), child: const Text("Register",
style: TextStyle(fontSize: 20),),),
)
],
),
);
}
}
