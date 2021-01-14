import 'package:flutter/material.dart';
import 'package:sdgs8/Start.dart';
import 'package:sdgs8/Login.dart';
// import 'package:sdgs8/coba/start.dart';

void main() {
  var app = new MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Start(),
      initialRoute: '/',
      routes: {
        '/': (context) => Start(),
        '/login': (context) => Login(),
      },
    );
  }
}
