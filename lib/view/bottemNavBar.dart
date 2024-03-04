// ignore_for_file: file_names

import 'package:ak/core.dart';
import 'package:ak/main.dart';
import 'package:ak/view/counterpage.dart';
import 'package:ak/view/listofdatasthiredpage.dart';
import 'package:ak/view/readingpageLast.dart';
import 'package:ak/view/secondPage.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

int _currentIndex = 0;

class _BottomBarState extends State<BottomBar> {
  final List<Widget> _widgetOptions = <Widget>[
    const LanguagePick(),
    const ReadPageLast(),
    const DataListpage(),
    const CounterPage(),
    const DuaPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkGreen,
      body: _widgetOptions[_currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            image:
                DecorationImage(image: AssetImage("image/bottomnavbg-01.png"))),
        child: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(
            255,
            0,
            76,
            65,
          ),
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          currentIndex: _currentIndex,
          selectedItemColor: ligGreen.withOpacity(1.0),
          // unselectedItemColor: Colors.white.withOpacity(0.7),
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              backgroundColor: darkGreen,
              icon: Icon(Icons.home_outlined),
              label: '',
            ),
            const BottomNavigationBarItem(
              backgroundColor: darkGreen,
              icon: Icon(Icons.bookmark_border_rounded),
              label: '',
            ),
            BottomNavigationBarItem(
              backgroundColor: darkGreen,
              icon: _currentIndex == 2
                  ? Image.asset(
                      'image/KATRE FM-liggreen-01.png', // Replace this with your image path
                      width: 40,
                    )
                  : Image.asset(
                      'image/KATRE FM-white-01.png', // Replace this with your image path
                      width: 40,
                    ),
              label: '',
            ),
            BottomNavigationBarItem(
              backgroundColor: darkGreen,
              icon: _currentIndex == 3
                  ? Image.asset(
                      'image/bar conuter-01.png', // Replace this with your image path
                      width: 30,
                    )
                  : Image.asset(
                      'image/bar conuter white-01.png', // Replace this with your image path
                      width: 25,
                    ),
              label: '',
            ),
            const BottomNavigationBarItem(
              backgroundColor: darkGreen,
              icon: Icon(Icons.table_rows_rounded),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
