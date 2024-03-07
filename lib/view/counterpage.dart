// ignore_for_file: unused_local_variable, avoid_unnecessary_containers, sized_box_for_whitespace

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
          appBar: AppBar(
              title: Container(
                width: mediqurey.width,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    border: Border.all(width: 3, color: ligGreen)),
                child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Text("ARAMAK", style: TextStyle(fontSize: 15)),
                    )),
              ),
              backgroundColor: const Color.fromARGB(255, 2, 113, 96),
              leading: const Icon(
                Icons.chevron_left_rounded,
                size: 40,
              ),
              actions: const [
                Icon(Icons.table_rows_rounded),
                SizedBox(
                  width: 25,
                ),
              ]),
          body: InkWell(
            onTap: () {
              // count.addvalues();
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
                    // color: Colors.amber,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 20),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const CircleAvatar(
                                    radius: 22,
                                    backgroundColor: ligGreen,
                                    child: Icon(
                                      Icons.volume_up_rounded,
                                      color: darkGreen,
                                      size: 25,
                                    )),
                                const CircleAvatar(
                                    radius: 22,
                                    backgroundColor: ligGreen,
                                    child: Icon(
                                      Icons.bookmark_border,
                                      color: darkGreen,
                                      size: 25,
                                    )),
                                CircleAvatar(
                                    radius: 22,
                                    backgroundColor: ligGreen,
                                    child: Container(
                                        width: 50,
                                        height: 30,
                                        child: const Image(
                                            image: AssetImage(
                                                "image/counder-icon-01.png")))),
                                const CircleAvatar(
                                    radius: 22,
                                    backgroundColor: ligGreen,
                                    child: Icon(
                                      Icons.abc,
                                      color: darkGreen,
                                      size: 25,
                                    )),
                                const CircleAvatar(
                                    radius: 22,
                                    backgroundColor: ligGreen,
                                    child: Icon(
                                      Icons.abc,
                                      color: darkGreen,
                                      size: 25,
                                    ))
                              ],
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("image/counder-01.png"))),
                              width: mediqurey.width,

                              height: mediqurey.height * .6,
                              child: Column(
                                children: [
                                  const SizedBox(height: 100),
                                  Container(
                                    height: mediqurey.height * .1,
                                    width: mediqurey.width * .56,
                                    decoration: BoxDecoration(
                                        color: ligGreen,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Center(
                                        child: Text(
                                      "${count.data}",
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          letterSpacing: 6.0,
                                          fontSize: 65,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "digitalfont"),
                                    )),
                                  ),
                                  const SizedBox(height: 20),
                                  Container(
                                    height: mediqurey.height * .12,
                                    // color: Colors.black,
                                    width: mediqurey.width * .8,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        GestureDetector(onTap: () {count.lessvalues();
                                          
                                        },
                                          child: CircleAvatar(
                                            backgroundColor: ligGreen,
                                            child: Icon(
                                              Icons.replay,
                                              size: 60,
                                              color: darkGreen,
                                            ),
                                            radius: 39,
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  title: Text("Success"),
                                                  titleTextStyle: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                      fontSize: 20),
                                                  actionsOverflowButtonSpacing:
                                                      20,
                                                  actions: [
                                                    
                                                    ElevatedButton(
                                                        onPressed: () {},
                                                        child: Text("Back")),
                                                    ElevatedButton(
                                                        onPressed: () {},
                                                        child: Text("Next")),
                                                  ],
                                                  content: Text(
                                                      "Saved successfully"),
                                                );
                                              },
                                            );

                                            // count.clearvalues();
                                          },
                                          child: CircleAvatar(
                                            backgroundColor: ligGreen,
                                            child: Icon(Icons.autorenew_rounded,
                                                size: 60, color: darkGreen),
                                            radius: 39,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Center(
                                    child: InkWell(
                                      onTap: () {
                                        count.addvalues();
                                      },
                                      child: Container(
                                        width: mediqurey.width * .4,
                                        height: mediqurey.height * .2,
                                        decoration: BoxDecoration(
                                            color: ligGreen,
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                      ),
                                    ),
                                  ),
                                  // Expanded(
                                  //     child: Container(
                                  //   width: 150, height: 150,
                                  //   child: CircleAvatar(),
                                  //   // color: Colors.brown,ch
                                  //   decoration: BoxDecoration(
                                  //     borderRadius: BorderRadius.circular(100),
                                  //     color: Colors.brown,
                                  //   ),
                                  // )),
                                  const SizedBox(
                                    height: 20,
                                  )
                                ],
                              ),
                              // child: Image.asset("image/counder-01.png"),
                            ),
                          ),
                          const Spacer(),
                        ]),
                  ),

                  // Container(
                  //   width: mediqurey.width * .8,
                  //   height: mediqurey.height * .6,
                  //   decoration: BoxDecoration(
                  //       color: Colors.black.withOpacity(.3),
                  //       borderRadius:
                  //           const BorderRadius.all(Radius.circular(20))),
                  //   child: Column(children: [
                  //     const SizedBox(height: 50),
                  //     Text(
                  //       "${count.data}",
                  //       style: const TextStyle(letterSpacing: 3,
                  //           color: Colors.white,
                  //           fontSize: 130,
                  //           fontWeight: FontWeight.bold,
                  //           fontFamily: "Jersey"),
                  //     ),
                  //     const SizedBox(height: 50),
                  //     Container(
                  //       height: 100,
                  //       // color: Colors.amber,
                  //       child: Image.asset(
                  //         "image/KATRE FM-white-01.png",
                  //       ),
                  //     ),
                  //     const Spacer(),
                  //     Row(
                  //       children: [
                  //         Expanded(
                  //             child: Padding(
                  //           padding: const EdgeInsets.symmetric(horizontal: 20),
                  //           child: GestureDetector(
                  //             onTap: () {
                  //               count.clearvalues();
                  //             },
                  //             child: Container(
                  //               height: mediqurey.height * .08,
                  //               decoration: BoxDecoration(
                  //                   borderRadius: const BorderRadius.all(
                  //                       Radius.circular(100)),
                  //                   border:
                  //                       Border.all(width: 8, color: ligGreen),
                  //                   // color: Colors.amberAccent,
                  //                   boxShadow: const [
                  //                     BoxShadow(
                  //                         color: Colors.black26,
                  //                         offset: Offset(
                  //                           0,
                  //                           10,
                  //                         ))
                  //                   ]),
                  //               child: Center(
                  //                   child: Text(
                  //                 "Clear",
                  //                 style: TextStyle(
                  //                   letterSpacing: 8.2,
                  //                   color: Colors.white,
                  //                   fontSize: 30,
                  //                   fontFamily: "Jersey",
                  //                 ),
                  //               )),
                  //               // const Icon(
                  //               //   Icons.replay_circle_filled_outlined,
                  //               //   size: 40,
                  //               //   color: Colors.white,
                  //               // ),
                  //             ),
                  //           ),
                  //         )),
                  //       ],
                  //     ),
                  //     const SizedBox(
                  //       height: 20,
                  //     )
                  //   ]),
                  // ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
