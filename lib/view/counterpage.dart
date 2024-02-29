// ignore_for_file: unused_local_variable, avoid_unnecessary_containers

import 'package:ak/controler/counterpage.dart';
import 'package:ak/core.dart';
import 'package:ak/view/imageandicons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediqurey = MediaQuery.of(context).size;
    return Consumer2<Imageicons, Conutpage>(
      builder: (context, value, count, child) {
        return Scaffold(
          body: InkWell(
            onTap: () {
              count.addvalues();
            },
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: value.blankBg,
                ),
                Center(
                  child: Container(
                    width: mediqurey.width * .8,
                    height: mediqurey.height * .6,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(.3),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Column(children: [
                      const SizedBox(height: 50),
                      Text(
                        "${count.data}", 
                        style: const TextStyle(letterSpacing: 3,
                            color: Colors.white,
                            fontSize: 130,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Jersey"),
                      ),
                      const SizedBox(height: 50),
                      Container(
                        height: 100,
                        // color: Colors.amber,
                        child: Image.asset(
                          "image/KATRE FM-white-01.png",
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: GestureDetector(
                              onTap: () {
                                count.clearvalues();
                              },
                              child: Container(
                                height: mediqurey.height * .08,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(100)),
                                    border:
                                        Border.all(width: 8, color: ligGreen),
                                    // color: Colors.amberAccent,
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black26,
                                          offset: Offset(
                                            0,
                                            10,
                                          ))
                                    ]),
                                child: Center(
                                    child: Text(
                                  "Clear",
                                  style: TextStyle(
                                    letterSpacing: 8.2,
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontFamily: "Jersey",
                                  ),
                                )),
                                // const Icon(
                                //   Icons.replay_circle_filled_outlined,
                                //   size: 40,
                                //   color: Colors.white,
                                // ),
                              ),
                            ),
                          )),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ]),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
