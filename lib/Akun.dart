import 'package:flutter/material.dart';

class Akun extends StatelessWidget {
  var rincianRumput = [
    'Usia 18-25 tahun',
    'Mampu bekerja seorang diri',
    'Tekun, ulet, telaten',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                top: 30.0,
                left: 20.0,
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 260.0),
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      image: DecorationImage(
                        image: AssetImage('images/kerja.jpg'),
                        alignment: Alignment.topRight,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    'Permata Alenta',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Pencari Kerja',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              margin: EdgeInsets.only(
                bottom: 30,
              ),
              width: double.infinity,
              height: 130,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(300.0),
                ),
              ),
            ),
            Text(
              "Bidang Yang diminati :",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 3.0,
                ),
              ),
              height: 40.0,
              margin: EdgeInsets.all(10.0),
              child: ListView(
                children: [
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 35.0,
                          height: 40.0,
                          color: Colors.blue,
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            height: 40.0,
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Bidang IT/Computer",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 15.0)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 3.0,
                ),
              ),
              height: 40.0,
              margin: EdgeInsets.all(10.0),
              child: ListView(
                children: [
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 35.0,
                          height: 40.0,
                          color: Colors.blue,
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            height: 40.0,
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Bidang IT/Computer",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 15.0)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 3.0,
                ),
              ),
              height: 40.0,
              margin: EdgeInsets.all(10.0),
              child: ListView(
                children: [
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 35.0,
                          height: 40.0,
                          color: Colors.blue,
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            height: 40.0,
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Admnistrasi Keuangan",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 15.0)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 107.0),
              height: 70.0,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    elevation: 10.0,
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                    child: Text(
                      "Logout",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    100.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
