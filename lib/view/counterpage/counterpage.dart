// // ignore_for_file: unused_local_variable, avoid_unnecessary_containers, sized_box_for_whitespace, sort_child_properties_last

import 'package:ak/controler/counterpage.dart';
import 'package:ak/core.dart';
import 'package:ak/view/counterpage/topicons.dart';
import 'package:ak/view/imageandicons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

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
