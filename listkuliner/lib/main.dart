import 'package:flutter/material.dart';
import 'home_page.dart';
import 'styles.dart';

void main() {
  runApp(KulinerApp());
}

class KulinerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: HomePage(),
    );
  }
}
