import 'package:flutter/material.dart';
import 'package:sdgs8/login.dart';

void main() {
  var app = new MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  /** alt shif f */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'A',
      home: start(),
    );
  }
}
