import 'package:flutter/material.dart'; //mengambil library flutter

void main() {
  var app = new MyApp();
  runApp(app);
} //fungsi utama yang akan menjadi entri point dari aplikasi yang dibuat

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //menghilangkan tulisan debug pada pojok kanan atas
      title: 'SDGs8',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Share Lok.er'), //widget untuk membuat teks
        ), //widget untuk membuat appbar
        drawer: Drawer(
          child: Text(''), //widget untuk membuat teks
        ), //widget untuk membuat tab menu pojok kiri atas
        body: Column(
          children: [
            Row(
              children: [
                Text(
                  'Nama Anggota Kelompok',
                  style: TextStyle(
                      fontSize: 20), //widget untuk mengatur style text
                ), //widget untuk membuat teks
              ],
            ), //widget untuk membuat baris
            Row(
              children: [
                Text(
                    '- Ahmad Lukman Maulana 182410103015 '), //widget untuk membuat teks
              ],
            ), //widget untuk membuat baris
            Row(
              children: [
                Text(
                    '- Muhammad Riski Fadista 182410103032'), //widget untuk membuat teks
              ],
            ), //widget untuk membuat baris
            Row(
              children: [
                Text(
                    '- Atiiqah Nabilah Imtiyaz 182410103055'), //widget untuk membuat teks
              ],
            ), //widget untuk membuat baris pada body
          ],
        ), //widget untuk membuat kolom pada body
      ), //widget untuk struktur dasar material design
    ); //widget yang membungkus beberapa widget yang menggunakan tema material design
  }
}
