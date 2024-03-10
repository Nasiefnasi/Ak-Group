// ignore_for_file: unused_local_variable, avoid_unnecessary_containers, sized_box_for_whitespace, sort_child_properties_last

import 'package:ak/controler/counterpage.dart';
import 'package:ak/core.dart';
import 'package:ak/view/counterpage/topicons.dart';
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
                    child:
                        Provider.of<Imageicons>(context, listen: false).blankBg
                    // value.blankBg,
                    ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      // color: Colors.amber,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 20),
                            const Align(
                              alignment: Alignment.topCenter,
                              child: Topcirculeicons(),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(value.countcounder))),
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
                                          GestureDetector(
                                            onTap: () {
                                              count.lessvalues();
                                            },
                                            child: const CircleAvatar(
                                              backgroundColor: ligGreen,
                                              child: Icon(
                                                Icons.replay,
                                                size: 60,
                                                color: darkGreen,
                                              ),
                                              radius: 39,
                                            ),
                                          ),
                                          CounterpageRestbutton(
                                              porviderdata: count)
                                        ],
                                      ),
                                    ),
                                    Center(
                                      child: InkWell(
                                        onTap: () {
                                          count.addvalues();
                                        },
                                        child: Container(
                                          width: mediqurey.width * .35,
                                          height: mediqurey.height * .17,
                                          child: const CircleAvatar(
                                            backgroundColor: ligGreen,
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const Spacer(),
                          ]),
                    ),
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

class CounterpageRestbutton extends StatelessWidget {
  const CounterpageRestbutton({
    super.key,
    required this.porviderdata,
  });
  final porviderdata;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (porviderdata.data > 0) {
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
                          backgroundColor: MaterialStatePropertyAll(darkGreen)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Back",
                        style: TextStyle(),
                      )),
                  ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                        darkGreen,
                      )),
                      onPressed: () {
                        porviderdata.clearvalues(context);
                      },
                      child: const Text("Rest")),
                ],
                content:
                    const Text("Do you want to reset the selected counter"),
              );
            },
          );
        }

        // count.clearvalues();
      },
      child: const CircleAvatar(
        backgroundColor: ligGreen,
        child: Icon(Icons.autorenew_rounded, size: 60, color: darkGreen),
        radius: 39,
      ),
    );
  }
}
