import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashpage(),
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
                "image/SplashpageBG-01-01.png",
                fit: BoxFit.cover,
              )),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: mediaqurey.height*.30,
                width: double.infinity,
                // color: Colors.amberAccent,
                child: const Center(
                    child: Column(
                      children: [
                //    
                      ],
                    )),
              )),
        ],
      ),
    );
  }
}
