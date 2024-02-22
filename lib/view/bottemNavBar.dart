import 'package:ak/core.dart';
import 'package:ak/view/secondPage.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

int _currentindex = 0;

class _BottomBarState extends State<BottomBar> {
  List<Widget> _widgetOptions = <Widget>[
    SecondPage(),
    SecondPage(),
    SecondPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: darkGreen,
        onTap: (value) {
          setState(() {
            _currentindex = value;
          });
        },
        currentIndex: _currentindex,
        selectedItemColor: ligGreen,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
        ],
      ),
    );
  }
}
