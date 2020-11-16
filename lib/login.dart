import 'package:flutter/material.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text("Share Lok.er"),
        ),
        body: new Container(
            padding: EdgeInsets.all(20.0),
            child: new Image.asset('images/kerja.jpg')));
  }
}
