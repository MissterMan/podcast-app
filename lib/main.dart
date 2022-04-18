import 'package:another_bookapps/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Podcast App',
      theme: ThemeData(
          fontFamily: "Clash-Display", splashColor: Color(0xFFD9534F)),
      home: MainScreen(),
    );
  }
}
