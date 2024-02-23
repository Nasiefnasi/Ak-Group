import 'package:ak/core.dart';
import 'package:ak/view/listofdatasthiredpage.dart';
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
    const DataListpage(),
    const SecondPage(),
    const SecondPage(),
    const SecondPage(),
    const SecondPage(),
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
          backgroundColor: Colors.amber,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          currentIndex: _currentIndex,
          selectedItemColor: ligGreen.withOpacity(1.0),
          unselectedItemColor: Colors.white.withOpacity(0.7),
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              backgroundColor: darkGreen,
              icon: Icon(Icons.home_outlined),
              label: '',
            ),
            const BottomNavigationBarItem(
              // backgroundColor: darkGreen,
              icon: Icon(Icons.bookmark_border_rounded),
              label: '',
            ),
            BottomNavigationBarItem(
              // backgroundColor: darkGreen,
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
              // backgroundColor: darkGreen,
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
              // backgroundColor: darkGreen,
              icon: Icon(Icons.table_rows_rounded),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}