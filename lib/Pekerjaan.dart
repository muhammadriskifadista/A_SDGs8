import 'package:flutter/material.dart';
import 'package:sdgs8/ListPelamar.dart';
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
          Container(
            child: RaisedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return MapScreen();
                    },
                  ),
                );
              },
              child: Text(
                'Lokasi Perusahaan',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
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
            child: Text(
              'Kirim Lamaran',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
            color: Colors.blue,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) {
                    return ListPelamar();
                  },
                ),
              );
            },
            child: Text(
              'Para pengirim lamaran',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
