import 'package:flutter/material.dart';
import 'package:sdgs8/MapScreen.dart';

class Pekerjaan extends StatefulWidget {
  @override
  _PekerjaanState createState() => _PekerjaanState();
}

class _PekerjaanState extends State<Pekerjaan> {
  var rincianRumput = [
    'Usia 18-25 tahun',
    'Mampu bekerja seorang diri',
    'Tekun, ulet, telaten',
  ];

  var rincianProgrammer = [
    'usia 12-25 tahun',
    'Mampu bekerja solo ataupun tim',
    'Harus kuat'
  ];
  var show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Text(
            'Pencabut Rumput',
            style: TextStyle(color: Colors.blue, fontSize: 20),
          ),
          IconButton(
            icon: new Icon(Icons.search, color: Colors.blue),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) {
                    return MapScreen();
                  },
                ),
              );
            },
          ),
          Container(
            height: 80,
            child: ListView(
              children: rincianRumput.map((e) {
                return Padding(
                  child: Text(e),
                  padding: EdgeInsets.only(top: 5.0, left: 20.0),
                );
              }).toList(),
            ),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('Kirim Lamaran'),
            color: Colors.blue,
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('Para pengirim lamaran'),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
