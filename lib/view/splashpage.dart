// ignore_for_file: sized_box_for_whitespace, await_only_futures

import 'dart:async';

import 'package:ak/view/bottemNavBar.dart';
import 'package:ak/view/imageandicons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  
  @override
  void initState()  {
    // TODO: implement initState
     Provider.of<Imageicons>(context,listen: false);
    Timer(
        const Duration(seconds: 4),
        () => Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return BottomBar();
              },
            )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   
    return Consumer<Imageicons>(builder: (context, value, child) {
      return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Provider.of<Imageicons>(context,listen: false).imagess,
          // Image.asset(
          //   "image/Splash-01.png",
          //   fit: BoxFit.cover,
          // ),
        ),
      );
    },
     
    );
  }
}
