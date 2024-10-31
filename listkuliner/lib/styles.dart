import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  primaryColor: Colors.brown,
  scaffoldBackgroundColor: Color(0xFFFFF8E1),
  textTheme: TextTheme(
    displayLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.brown),
    bodyLarge: TextStyle(fontSize: 16.0, color: Colors.black87),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.orange),
);
