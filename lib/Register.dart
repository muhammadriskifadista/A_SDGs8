import 'package:flutter/material.dart';
import 'package:sdgs8/Login.dart';

class Register extends StatelessWidget {
  Widget appBar() {
    return AppBar(
      title: Text('Share Lok.er'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Masukan Nama Lengkap Anda",
                      icon: Icon(Icons.account_circle),
                      labelText: 'Nama',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5.0),
                  ),
                  //email
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Masukan email anda",
                      icon: Icon(Icons.mail_outline),
                      labelText: 'Email',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5.0),
                  ),
                  //Password TextField
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      labelText: 'Password',
                    ),
                    obscureText: true,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                  ),
                  //no hp
                  TextField(
                    decoration: InputDecoration(
                      hintText: "No Handphone",
                      icon: Icon(Icons.phone_android),
                      labelText: 'No. Hp',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 20.0,
                            right: 20.0,
                            bottom: 10.0,
                          ),
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login(),
                                ),
                              );
                            },
                            child: Text(
                              'Daftar',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
