import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sdgs8/ChangePage.dart';
import 'package:sdgs8/Detail.dart';
import 'package:sdgs8/UserController.dart';

class ListPelamar extends StatefulWidget {
  @override
  _ListPelamarState createState() => _ListPelamarState();
}

class _ListPelamarState extends State<ListPelamar> {
  List data = [];
  void getUser() async {
    UserController.getData().then((res) {
      setState(() {
        data = res;
      });
      print(data.toString());
    });
  }

  @override
  void initState() {
    getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: new AppBar(
        title: Text(
          'Para Pengirim Lamaran (Calon Lawan Anda)',
          style: TextStyle(fontSize: 13),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, int i) {
            return InkWell(
              onTap: () {
                ChangePage(
                    context,
                    Detail(
                      data: data[i],
                    ));
              },
              child: Card(
                shadowColor: Colors.deepOrange,
                child: ListTile(
                  title: Column(
                    children: [
                      Text("${data[i]["name"]}"),
                      Text("${data[i]["email"]}"),
                      Text("${data[i]["address"]["street"]}"),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
