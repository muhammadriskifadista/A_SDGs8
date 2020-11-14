import 'package:flutter/material.dart';
import 'package:sdgs8/login.dart';

void main() {
  var app = new MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //menghilangkan tulisan debug pada pojok kanan atas
      title: 'SDGs8',
      home: login(),
    );
  }
}
