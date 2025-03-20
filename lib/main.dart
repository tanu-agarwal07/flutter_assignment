import 'package:flutter/material.dart';
import 'package:flutter_assignment/screens/tabbar_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bike Dashboard',
      home: MainScreen(),
    );
  }
}