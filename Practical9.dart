import 'package:flutter/material.dart'; void main() {
runApp(MyApp());}
class MyApp extends StatelessWidget { @override
Widget build(BuildContext context) { return MaterialApp(
home: Scaffold( appBar: AppBar(
title: Text("Grid View"),
),
body: Container(
padding: EdgeInsets.all(12.0), child: GridView.count( crossAxisCount: 2,
crossAxisSpacing: 10.0,
mainAxisSpacing: 10.0, shrinkWrap: true,
children: List.generate(10, (index) { return Padding(
padding: const EdgeInsets.all(10.0), child: Container(
alignment: Alignment.center, decoration: BoxDecoration( color: Colors.lightGreenAccent,
borderRadius: BorderRadius.circular(12.0),
),
child: Text('Item $index',
style: TextStyle(fontSize: 20, color: Colors.black87),),),
);
}),
), ), ),
);
}
}

