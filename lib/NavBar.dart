import 'package:flutter/material.dart';
import 'package:sdgs8/Akun.dart';
import 'package:sdgs8/Home.dart';
import 'package:sdgs8/Pekerjaan.dart';
import 'package:sdgs8/Akun.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _activeScreenIndex = 0;
  List<Widget> _screens = [
    Home(),
    Pekerjaan(),
    Akun(),
  ];
  Widget TopNavBar() {
    return AppBar(
      title: Text("Share Lok.er"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopNavBar(),
      body: _screens[_activeScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _activeScreenIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _activeScreenIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          // Tiga item navigasi
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            title: Text('Pekerjaan'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Akun'),
          ),
        ],
      ),
    );
  }
}
