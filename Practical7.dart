main.dart:
import 'package:flutter/material.dart'; import 'login.dart';
void main() { runApp(MaterialApp(
debugShowCheckedModeBanner: false, home:Scaffold(
appBar: AppBar(
title: const Text("Practical - 7"), foregroundColor: Colors.black87,
),

body: LoginPage(),
),
),
);
}

login.dart:
import 'package:flutter/material.dart';
import 'package:practical7/custom_geasture.dart'; import 'package:practical7/forpass.dart';
import 'package:practical7/signup.dart'; class LoginPage extends StatelessWidget { LoginPage({super.key});
final TextEditingController usernameController = TextEditingController(); final TextEditingController passwordController = TextEditingController();
@override
Widget build(BuildContext context) { return MaterialApp( debugShowCheckedModeBanner: false, home: Scaffold(
body: Container(
margin: const EdgeInsets.all(24), child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
_header(context),
_inputField(context),
_forgotPassword(context),
_signup(context),
],
),
),
),
);
}
 
_header(context) { return const Column( children: [
Text(
"Welcome Back",
style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
),
Text("Enter your credential to login"),
],
);
}

_inputField(context) { return Column(
crossAxisAlignment: CrossAxisAlignment.stretch, children: [
TextFormField(
controller: usernameController, decoration: InputDecoration(
hintText: "Username", border: OutlineInputBorder(
borderRadius: BorderRadius.circular(18), borderSide: BorderSide.none
),
fillColor: Colors.purple.withOpacity(0.1), filled: true,
prefixIcon: const Icon(Icons.person)), validator: (value) {
if (value!.isEmpty) {
return 'Please enter your username';
}
return null;
},
),
const SizedBox(height: 10), TextFormField(
controller: passwordController, decoration: InputDecoration( hintText: "Password",
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(18), borderSide: BorderSide.none),
fillColor: Colors.purple.withOpacity(0.1), filled: true,
prefixIcon: const Icon(Icons.password),
),
obscureText: true, validator: (value) {
if (value!.isEmpty) {
return 'Please enter your password';
}
return null;
},
),
const SizedBox(height: 10), ElevatedButton(
 
onPressed: () {
if (usernameController.text == 'admin' && passwordController.text == 'admin123!@#') {
Navigator.push(context, MaterialPageRoute(builder: (context)=> const custom_geasture())); print('Login Successful');
} else {
print('Invalid Credentials');
}
},
style: ElevatedButton.styleFrom( shape: const StadiumBorder(),
padding: const EdgeInsets.symmetric(vertical: 16), backgroundColor: Colors.purple,
),
child: const Text( "Login",
style: TextStyle(fontSize: 20, color: Colors.white),
),
)
],
);
}
_forgotPassword(context) { return TextButton( onPressed: () {
Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const ForPassPage()));
},
child: const Text("Forgot password?", style: TextStyle(color: Colors.purple),
),
);
}

_signup(context) { return Row(
mainAxisAlignment: MainAxisAlignment.center, children: [
const Text("Don't have an account? "), TextButton(
onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupPage()));
},
child: const Text("Sign Up", style: TextStyle(color: Colors.purple),)
)
],
);
}
}
 
signup.dart:
import 'package:flutter/material.dart'; import 'package:flutter/services.dart'; import 'package:practical7/login.dart';

import 'custom_geasture.dart';

class SignupPage extends StatelessWidget { SignupPage({super.key});

final TextEditingController emailController = TextEditingController(); final TextEditingController usernameController = TextEditingController(); final TextEditingController passwordController = TextEditingController();
final TextEditingController conpasswordController = TextEditingController(); final TextEditingController mobileController = TextEditingController();

@override
Widget build(BuildContext context) {
return MaterialApp( debugShowCheckedModeBanner: false, home: Scaffold(
body: SingleChildScrollView( child: Container(
padding: const EdgeInsets.symmetric(horizontal: 40), height: MediaQuery.of(context).size.height - 50, width: double.infinity,
child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
Column(
children: <Widget>[
const SizedBox(height: 60.0), const Text(
"Sign up",
style: TextStyle( fontSize: 30,
fontWeight: FontWeight.bold,
),
),
const SizedBox(height: 20,), Text(
"Create your account",
style: TextStyle(fontSize: 15, color: Colors.grey[700]),
)
],
),
Column(
children: <Widget>[ TextFormField(
 
decoration: InputDecoration( hintText: "Username", border: OutlineInputBorder(
borderRadius: BorderRadius.circular(18), borderSide: BorderSide.none),
fillColor: Colors.purple.withOpacity(0.1), filled: true,
prefixIcon: const Icon(Icons.person)), validator: (value) {
if (value!.isEmpty) {
return 'Please enter your username';
}
return null;
},
),
const SizedBox(height: 20), TextFormField(
controller: emailController, decoration: InputDecoration(
hintText: "Email",
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(18), borderSide: BorderSide.none),
fillColor: Colors.purple.withOpacity(0.1), filled: true,
prefixIcon: const Icon(Icons.email)), validator: (value) {
if (value!.isEmpty) {
return 'Please enter your email address';
}
return null;
},
),
const SizedBox(height: 20), TextFormField(
controller: mobileController, decoration: InputDecoration(
hintText: "Mobile",
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(18), borderSide: BorderSide.none),
fillColor: Colors.purple.withOpacity(0.1), filled: true,
prefixIcon: const Icon(Icons.person)), keyboardType: TextInputType.number, inputFormatters: <TextInputFormatter>[ FilteringTextInputFormatter.digitsOnly
],
validator: (value) {
if (value!.isEmpty) {
return 'Please enter your Mobile Number';
 
}
return null;
},
),
const SizedBox(height: 20), TextFormField(
controller: passwordController, decoration: InputDecoration( hintText: "Password",
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(18), borderSide: BorderSide.none),
fillColor: Colors.purple.withOpacity(0.1), filled: true,
prefixIcon: const Icon(Icons.password),
),
obscureText: true, validator: (value) {
if (value!.isEmpty) {
return 'Please enter your password';
}
return null;
},
),
const SizedBox(height: 20), TextFormField(
controller: conpasswordController, decoration: InputDecoration( hintText: "Confirm Password", border: OutlineInputBorder(
borderRadius: BorderRadius.circular(18), borderSide: BorderSide.none),
fillColor: Colors.purple.withOpacity(0.1), filled: true,
prefixIcon: const Icon(Icons.password),
),
obscureText: true, validator: (value) {
if(value != passwordController.text) return "Password Doesn't Match"; if (value!.isEmpty) {
return 'Please enter your password';
}
return null;
},
),
],
),
Container(
padding: const EdgeInsets.only(top: 3, left: 3), child: ElevatedButton(
 
onPressed: () {
if (emailController.text == 'admin@gmail.com' && passwordController.text == 'admin123!@#') {
Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const custom_geasture()));
print('Login Successful');
} else {
print('Invalid Credentials');
}
},
child: const Text( "Sign up",
style: TextStyle(fontSize: 20, color: Colors.white),
),
style: ElevatedButton.styleFrom( shape: const StadiumBorder(),
padding: const EdgeInsets.symmetric(vertical: 16), backgroundColor: Colors.purple,
),
)
),
Row(
mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
const Text("Already have an account?"), TextButton(
onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
},
child: const Text("Login", style: TextStyle(color: Colors.purple),)
)
],
)
],
),
),
),
),
);
}
}
forpass.dart:
import 'package:flutter/material.dart'; import 'login.dart';

class ForPassPage extends StatelessWidget { const ForPassPage({super.key});

@override
Widget build(BuildContext context) {
 
return MaterialApp( debugShowCheckedModeBanner: false, home: Scaffold(
body: Container(
margin: const EdgeInsets.all(24), child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
_header(context),
_inputField(context),
],
),
),
),
);
}
_header(context) { return const Column( children: [
Text(
"Reset Your Password",
style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
),
],
);
}

_inputField(context) { return Column(
crossAxisAlignment: CrossAxisAlignment.stretch, children: [
TextField(
decoration: InputDecoration( hintText: "Email Address", border: OutlineInputBorder(
borderRadius: BorderRadius.circular(18), borderSide: BorderSide.none
),
fillColor: Colors.purple.withOpacity(0.1), filled: true,
prefixIcon: const Icon(Icons.person)),
),
const SizedBox(height: 10), ElevatedButton(
onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
},
style: ElevatedButton.styleFrom( shape: const StadiumBorder(),
padding: const EdgeInsets.symmetric(vertical: 16),
 
backgroundColor: Colors.purple,
),
child: const Text( "Reset Password",
style: TextStyle(fontSize: 20, color: Colors.white),
),
)
],
);
}
}


custom_geasture.dart:
import 'package:flutter/material.dart';
class custom_geasture extends StatefulWidget { const custom_geasture({super.key});

@override
State<custom_geasture> createState() => _custom_geastureState();
}
class _custom_geastureState extends State<custom_geasture> { Color color1=Colors.orange;
String displayText = 'Orange';
IconData icn = Icons.temple_hindu_outlined;

@override
Widget build(BuildContext context) {

return Scaffold( appBar: AppBar( centerTitle: true,
title: Text("Custom Geasture"),
),
body: GestureDetector( onTap: () {
setState(() { if(color1==Colors.orange) { color1 = Colors.blue; displayText = 'Blue';
icn = Icons.radar;
}else if(color1==Colors.blue){ color1=Colors.green; displayText = 'Green';
icn = Icons.add_business;} else{ color1=Colors.orange; displayText = 'Orange';
icn = Icons.temple_hindu_rounded;
}
 
});
},
child: Center( child: Container( height: 1000,
width: 1000, color: color1, child: Center( child: Column(
mainAxisAlignment: MainAxisAlignment.center, children: [
Icon( icn, size: 50,
color: Colors.white,), Text(displayText, style: TextStyle( fontSize: 50,
color: Colors.white,
),),
Container(

)
],
),
),
),
),
),
);
}
}
