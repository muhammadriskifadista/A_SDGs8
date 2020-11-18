import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Widget appBar() {
    return AppBar(
      title: Text('Share Lok.er'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                bottom: 50,
                top: 10,
              ),
              width: 400,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
                image: DecorationImage(
                  image: AssetImage('images/kantor.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              "SELAMAT DATANG",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 40.0, left: 5.0, right: 5.0),
              child: Text(
                "Dengan Aplikasi Share Lok.er ini Kami Harapkan Anda Bisa Cepat Mendapatkan Pekerjaan yang Layak dan yanng Anda Minati",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
