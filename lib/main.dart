 import ’package:flutter/material.dart’;
 2
 3 class SimpleLayoutPage extends StatelessWidget {
 4 @override
 5 Widget build(BuildContext context) {
 6 return Scaffold(
 7 appBar: AppBar(title: Text(’UI/UX Layout’)),
 8 body: Padding(
 9 padding: EdgeInsets.all(16.0),
 10 child: Column(
 11 children: [
 12 Container(
 13 color: Colors.blue[100],
 14 height: 100,
 15 child: Center(
 16 child: Text(’Header Section’),
 17 ),
 18 ),
 19 SizedBox(height: 10),
 20 Expanded(
 21 child: Container(
 22 color: Colors.orange[100],
 23 child: Center(
 24 child: Text(’Main Content’),
 25 ),
 26 ),
 27 ),
 28 SizedBox(height: 10),
 29 Container(
 30 color: Colors.green[100],
 31 height: 60,
 32 child: Center(child: Text(’Footer Section’
 )),
 33 ),
 34 ],
 35 ),
 36 ),
 37 );
 2
38
 39 }
 40
 }
 41 void main() => runApp(MaterialApp(home: SimpleLayoutPage
 ()));