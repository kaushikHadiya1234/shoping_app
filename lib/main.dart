import 'package:flutter/material.dart';
import 'package:shoping_app/HomeScreen/home_screen.dart';
import 'package:shoping_app/view.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => HomeScreen(),
        'view':(context) => View(),
      },
    ),
  );
}
