import 'package:flutter/material.dart';
import 'Home.dart';
import 'Admin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "UNIQUE HARDWARES",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Home(),
      routes: {
        '/admin': (context) => Admin(),
        '/home': (context) => Home(),
      },
    );
  }
}
