// // ignore_for_file: unused_local_variable, avoid_unnecessary_containers, sized_box_for_whitespace, sort_child_properties_last

import 'package:ak/controler/counterpage.dart';
import 'package:ak/core.dart';
import 'package:ak/view/counterpage/topicons.dart';
import 'package:ak/view/imageandicons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

// class CounterPage extends StatelessWidget {
//   const CounterPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final mediqurey = MediaQuery.of(context).size;
//     return Consumer2<Imageicons, Conutpagecontoller>(
//       builder: (context, value, count, child) {
//         return Scaffold(
//           appBar: AppBar(
//               title: Container(
//                 width: mediqurey.width,
//                 height: 40,
//                 decoration: BoxDecoration(
//                     borderRadius: const BorderRadius.all(Radius.circular(8)),
//                     border: Border.all(width: 3, color: ligGreen)),
//                 child: const Align(
//                     alignment: Alignment.centerLeft,
//                     child: Padding(
//                       padding:
//                           EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//                       child: Text("ARAMAK", style: TextStyle(fontSize: 15)),
//                     )),
//               ),
//               backgroundColor: const Color.fromARGB(255, 2, 113, 96),
//               leading: const Icon(
//                 Icons.chevron_left_rounded,
//                 size: 40,
//               ),
//               actions: const [
//                 Icon(Icons.table_rows_rounded),
//                 SizedBox(
//                   width: 25,
//                 ),
//               ]),
//           body: InkWell(
//             onTap: () {
//               // count.addvalues();
//             },
//             child: Stack(
//               children: [
//                 SizedBox(
//                     width: double.infinity,
//                     height: double.infinity,
//                     child:
//                         Provider.of<Imageicons>(context, listen: false).blankBg
//                     // value.blankBg,
//                     ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Center(
//                     child: Container(
//                       // color: Colors.amber,
//                       child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             const SizedBox(height: 20),
//                             const Align(
//                               alignment: Alignment.topCenter,
//                               child: Topcirculeicons(),
//                             ),
//                             const Spacer(),
//                             Padding(
//                               padding: const EdgeInsets.all(10.0),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     image: DecorationImage(
//                                         image: AssetImage(value.countcounder))),
//                                 width: mediqurey.width,
//                                 height: mediqurey.height * .6,
//                                 child: Column(
//                                   children: [
//                                     const SizedBox(height: 100),
//                                     Container(
//                                       height: mediqurey.height * .1,
//                                       width: mediqurey.width * .56,
//                                       decoration: BoxDecoration(
//                                           color: ligGreen,
//                                           borderRadius:
//                                               BorderRadius.circular(15)),
//                                       child: Center(
//                                           child: Text(
//                                         "${count.data}",
//                                         textAlign: TextAlign.left,
//                                         style: const TextStyle(
//                                             letterSpacing: 6.0,
//                                             fontSize: 65,
//                                             fontWeight: FontWeight.w500,
//                                             fontFamily: "digitalfont"),
//                                       )),
//                                     ),
//                                     const SizedBox(height: 20),
//                                     Container(
//                                       height: mediqurey.height * .12,
//                                       // color: Colors.black,
//                                       width: mediqurey.width * .8,
//                                       child: Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceAround,
//                                         children: [
//                                           GestureDetector(
//                                             onTap: () {
//                                               count.lessvalues();
//                                             },
//                                             child: const CircleAvatar(
//                                               backgroundColor: ligGreen,
//                                               child: Icon(
//                                                 Icons.replay,
//                                                 size: 60,
//                                                 color: darkGreen,
//                                               ),
//                                               radius: 39,
//                                             ),
//                                           ),
//                                           CounterpageRestbutton(
//                                               porviderdata: count)
//                                         ],
//                                       ),
//                                     ),
//                                     Center(
//                                       child: InkWell(
//                                         onTap: () {
//                                           count.addvalues(true);
//                                         },
//                                         child: Container(
//                                           width: mediqurey.width * .35,
//                                           height: mediqurey.height * .17,
//                                           child: const CircleAvatar(
//                                             backgroundColor: ligGreen,
//                                           ),
//                                           decoration: BoxDecoration(
//                                               borderRadius:
//                                                   BorderRadius.circular(100)),
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(
//                                       height: 20,
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             const Spacer(),
//                           ]),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// class CounterpageRestbutton extends StatelessWidget {
//   const CounterpageRestbutton({
//     super.key,
//     required this.porviderdata,
//   });
//   final porviderdata;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         if (porviderdata.data > 0) {
//           showDialog(
//             context: context,
//             builder: (context) {
//               return AlertDialog(
//                 title: const Text("Confirm reset"),
//                 titleTextStyle: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     fontSize: 20),
//                 actionsOverflowButtonSpacing: 20,
//                 actions: [
//                   ElevatedButton(
//                       onHover: (value) {},
//                       style: const ButtonStyle(
//                           backgroundColor: MaterialStatePropertyAll(darkGreen)),
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                       child: const Text(
//                         "Back",
//                         style: TextStyle(),
//                       )),
//                   ElevatedButton(
//                       style: const ButtonStyle(
//                           backgroundColor: MaterialStatePropertyAll(
//                         darkGreen,
//                       )),
//                       onPressed: () {
//                         porviderdata.clearvalues(context);
//                       },
//                       child: const Text("Rest")),
//                 ],
//                 content:
//                     const Text("Do you want to reset the selected counter"),
//               );
//             },
//           );
//         }

//         // count.clearvalues();
//       },
//       child: const CircleAvatar(
//         backgroundColor: ligGreen,
//         child: Icon(Icons.autorenew_rounded, size: 60, color: darkGreen),
//         radius: 39,
//       ),
//     );
//   }
// }

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  bool duration = false;
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.chevron_left_rounded)),
        title: const Text(
          "Counter",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.add),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.list),
          SizedBox(
            width: 30,
          )
        ],
      ),
      body: SafeArea(
          child: Consumer<Conutpagecontoller>(builder: (context, value, child) {
        return Column(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  value.addvalues(duration);
                },
                child: Container(
                  color: Colors.black26,
                  child: Center(
                    child: Text(
                      "${value.data} ",
                      style: const TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Jersey",
                          letterSpacing: 5),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: mediaquery.height * .1,
              // color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      value.lessvalues();
                    },
                    child: const Icon(
                      color: Colors.black38,
                      Icons.settings_backup_restore_rounded,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          duration = !duration;
                          print(duration);
                        });
                      },
                      child: Icon(
                        color: Colors.black38,
                        duration ? Icons.vibration : Icons.speaker,
                        size: 30,
                      )
                      // : Icon(
                      //     color: Colors.black38,
                      //     Icons.speaker,
                      //     size: 30,
                      //   ),
                      ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Icon(
                    color: Colors.black38,
                    Icons.play_arrow_outlined,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      if (value.data > 0) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Confirm reset"),
                              titleTextStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 20),
                              actionsOverflowButtonSpacing: 20,
                              actions: [
                                ElevatedButton(
                                    onHover: (value) {},
                                    style: const ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                darkGreen)),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      "Back",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                ElevatedButton(
                                    style: const ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                      darkGreen,
                                    )),
                                    onPressed: () {
                                      value.clearvalues(context);
                                    },
                                    child: const Text(
                                      "Rest",
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ],
                              content: const Text(
                                  "Do you want to reset the selected counter"),
                            );
                          },
                        );
                      }
                    },
                    child: Icon(
                      color: Colors.black38,
                      Icons.settings,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            )
          ],
        );
      })),
    );
  }
}
