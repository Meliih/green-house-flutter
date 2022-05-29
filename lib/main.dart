import 'package:flutter/material.dart';
import 'package:green_house_flutter/HomePage.dart';
import 'package:green_house_flutter/LoginPage.dart';
import 'package:green_house_flutter/Register.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => AppState();
}

class AppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      home: LoginPage(),
    );
  }
}
