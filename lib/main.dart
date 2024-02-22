import 'package:ak/core.dart';
import 'package:ak/view/bottemNavBar.dart';
import 'package:ak/view/secondPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomBar(),
    );
  }
}

class Splashpage extends StatelessWidget {
  const Splashpage({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaqurey = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                "image/SplashpageBG-01.png",
                fit: BoxFit.cover,
              )),
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
                                    backgroundColor: MaterialStateProperty.all(
                                        Color.fromARGB(216, 9, 207, 134)),
                                    shape: MaterialStateProperty.all(
                                        const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5))))),
                                onPressed: () {},
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
                                        MaterialStateProperty.all(Colors.white),
                                    shape: MaterialStateProperty.all(
                                        const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5))))),
                                onPressed: () {},
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
  }
}
