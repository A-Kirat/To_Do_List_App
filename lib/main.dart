import 'package:flutter/material.dart';
import 'homePage.dart'; 


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(), // Set your screen here
    );
  }
}
