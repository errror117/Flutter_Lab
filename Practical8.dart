import 'package:flutter/material.dart'; void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget { const MyApp({super.key});

// This widget is the root of your application. @override
Widget build(BuildContext context) { return MaterialApp( debugShowCheckedModeBanner: false, home: Scaffold(
appBar: AppBar(
title: Text('List View', style: TextStyle(color: Colors.cyan),),
),
body: Center( child: Container( child: ListView(
padding: const EdgeInsets.all(8), children: <Widget>[
ListTile(
leading: Icon(Icons.android), title: Text('Android'),
subtitle: Text("App Development", style: TextStyle(color: Colors.green),),
),
ListTile(
leading: Icon(Icons.javascript), title: Text('JavaScript'),
subtitle: Text("Web Development", style: TextStyle(color: Colors.yellow),),
),ListTile(
leading: Icon(Icons.css), title: Text('CSS'),
subtitle: Text("Web Development", style: TextStyle(color: Colors.red),),
),ListTile(
leading: Icon(Icons.html), title: Text('HTML'),
subtitle: Text("Web Development", style: TextStyle(color: Colors.blue),),
),
ListTile(
leading: Icon(Icons.apple), title: Text('Swift'),
subtitle: Text("IOS Development", style: TextStyle(color: Colors.grey),),
),
],
),
),
),
),
);
}
}
