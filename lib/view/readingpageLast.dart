// ignore_for_file: file_names, avoid_unnecessary_containers, unnecessary_string_interpolations, non_constant_identifier_names

import 'package:ak/controler/slider.dart';
import 'package:ak/core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ReadPageLast extends StatelessWidget {
  ReadPageLast({
    super.key,
    required this.Indes,
    required this.titlename,
    required this.arab,
  });
  final int Indes;
  final String titlename;
  final List arab;

  @override
  Widget build(BuildContext context) {
    var mediaqurey = MediaQuery.of(context).size;
    return Consumer<SliderWidget>(builder: (context, value, child) {
      return Scaffold(
        appBar: AppBar(
            title: Container(
              width: mediaqurey.width,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  border: Border.all(width: 3, color: ligGreen)),
              child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Text("ARAMAK", style: TextStyle(fontSize: 15)),
                  )),
            ),
            backgroundColor: const Color.fromARGB(255, 2, 113, 96),
            leading: const Icon(
              Icons.chevron_left_rounded,
              size: 40,
            ),
            actions: [
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => SliderDialog(),
                  );
                },
                icon: const Icon(
                  Icons.table_rows_rounded,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 25,
              ),
            ]),
        body: SafeArea(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: mediaqurey.height * .1,
              width: double.infinity,
              color: ligGreen,
              child: Center(
                child: Text(
                  titlename,
                  style: const TextStyle(
                      fontSize: 28, fontWeight: FontWeight.w500, color: white),
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: arab.length,
              itemBuilder: (context, index) {
                // final arabicdataksey = listofayath.keys.elementAt(Indes);
                final turkishlistvalu = listofayath[arab];

                return Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          arab[index],
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: value.valueUpdate == 0.0
                                ? 25
                                : value.valueUpdate,
                            fontWeight: FontWeight.bold,
                            fontFamily: "arabicf",
                          ),
                        ),
                      ),
                      // color: Colors.black,
                    ),
                    //   ListView.builder(
                    //   shrinkWrap: true,
                    //   physics: NeverScrollableScrollPhysics(),
                    //   itemCount: turkishlistvalu?.length,
                    //   itemBuilder: (context, index) {
                    //     return ListTile(
                    //       title: Text(turkishlistvalu![index]),
                    //     );
                    //   },
                    // ),
                    // ListView.builder(
                    //   shrinkWrap: true,
                    //   physics: NeverScrollableScrollPhysics(),
                    //   itemCount: arabicdataksey?.length,
                    //   itemBuilder: (context, index) {
                    //     return ListTile(
                    //       title: Text(arabicdataksey![index]),
                    //     );
                    //   },
                    // ),
                    Container(
                      color: const Color.fromARGB(14, 253, 198, 1),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          turkishlistvalu![index],
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Calibri",
                          ),
                        ),
                      ),
                      // color: Colors.black,
                    ),
                  ],
                );
              },
            ))
          ],
        )),
      );
    });
  }
}

class SliderDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Customized'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Consumer<SliderWidget>(
            builder: (context, sliderWidget, _) => Slider(
              divisions: 50,
              min: 25.0,
              max: 75.0,
              value: sliderWidget.valueUpdate,
              onChanged: (value) {
                sliderWidget.setValue(value);
              },
            ),
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('OK'),
        ),
      ],
    );
  }
}
