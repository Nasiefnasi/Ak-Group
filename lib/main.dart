// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:ak/controler/counterpage.dart';
import 'package:ak/core.dart';
import 'package:ak/view/bottemNavBar.dart';
import 'package:ak/view/counterpage.dart';
import 'package:ak/view/imageandicons.dart';
import 'package:ak/view/secondPage.dart';
import 'package:ak/view/splashpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => Conutpage(),),
        ChangeNotifierProvider(
          create: (context) => Imageicons(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splash(),
      ),
    );
  } 
}

class LanguagePick extends StatelessWidget {
  const LanguagePick({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<Imageicons>(context, listen: true);
    var mediaqurey = MediaQuery.of(context).size;
    return Consumer<Imageicons>(builder: (context, value, child) {
      return Scaffold(
        body: Stack(
          children: [
            SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: value.splashimage
                // value.image
                //     Image.asset(
                //   "image/SplashpageBG-01.png",
                //   fit: BoxFit.cover,
                // ),
                ),
            Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: mediaqurey.height * .17,
                  width: double.infinity,
                  // color: Colors.amberAccent,
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 35,
                              width: 120,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              const Color.fromARGB(
                                                  216, 9, 207, 134)),
                                      shape: MaterialStateProperty.all(
                                          const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))))),
                                  onPressed: () async {
                                    Provider.of<Imageicons>(context,
                                            listen: false)
                                        .Dualar;
                                    Provider.of<Imageicons>(context,
                                            listen: false)
                                        .Esmaullah;
                                    Provider.of<Imageicons>(context,
                                            listen: false)
                                        .Kasideler;
                                    Provider.of<Imageicons>(context,
                                            listen: false)
                                        .Mubarek;
                                    Provider.of<Imageicons>(context,
                                            listen: false)
                                        .Muhtelif;

                                    Provider.of<Imageicons>(context,
                                            listen: false)
                                        .farz;
                                    Provider.of<Imageicons>(context,
                                            listen: false)
                                        .katre;

                                    Timer(Duration(seconds: 2), () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => DuaPage(),
                                      ));
                                    });

                                    // Navigator.push(context, MaterialPageRoute(
                                    //   builder: (context) {
                                    //     return const DuaPage();
                                    //   },
                                    // )
                                    // );
                                  },
                                  child: const Text(
                                    "العربية",
                                    style: TextStyle(
                                      color: darkGreen,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ))),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                              width: 120,
                              height: 35,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                      shape: MaterialStateProperty.all(
                                          const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))))),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return const DuaPage();
                                      },
                                    ));
                                  },
                                  child: const Text("Türkçe",
                                      style: TextStyle(
                                          color: darkGreen,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800))))
                        ],
                      ),
                      const Spacer(),
                      const Text(
                        "www.katrefm.com",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: ligGreen),
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  )),
                )),
          ],
        ),
      );
    });
  }
}
