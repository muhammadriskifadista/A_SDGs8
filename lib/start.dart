import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 100,
                bottom: 50,
              ),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                image: DecorationImage(
                  image: AssetImage('images/logo.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              "Share Lok.er",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 40.0, left: 30.0, right: 30.0),
              child: Text(
                "Berbagi Informasi tentang lowongan pekerjaan agar bisa mengurangi tingkat pengangguran di Indonesia demi menyongkong pertumbuhan ekonomi di negara ini",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
            ),
            FlatButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
              child: Text(
                "MULAI",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
