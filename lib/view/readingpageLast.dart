// ignore_for_file: file_names, avoid_unnecessary_containers, unnecessary_string_interpolations, non_constant_identifier_names, must_be_immutable

import 'package:ak/controler/reader_page_image.dart';
import 'package:ak/controler/slider.dart';
import 'package:ak/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class ReadPageLast extends StatelessWidget {
  ReadPageLast({
    super.key,
    required this.Indes,
    required this.titlename,
    required this.arab,
    required this.imag,
  });
  final int Indes;
  final String titlename;
  final List arab;
  String imag;

  @override
  Widget build(BuildContext context) {
    bool isture = true;
    var mediaqurey = MediaQuery.of(context).size;
    return Consumer<SliderWidget>(builder: (context, value, child) {
      return Scaffold(
        appBar: appbarss(context),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Container(
            //   height:
            //   mediaqurey.height * .1,
            //   width: double.infinity,
            //   color: ligGreen,
            //   child: Center(
            //     child: Text(
            //       titlename,
            //       style: const TextStyle(
            //           fontSize: 28, fontWeight: FontWeight.w900, color: white),
            //     ),
            //   ),
            // ),
            Container(
              width: double.infinity,
              height: 40,
              // color: Colors.amberAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Turkish"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Switch(
                      value: isture,
                      onChanged: (value) {},
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(0, 255, 249, 249),
                    image: DecorationImage(
                        image: AssetImage(
                          Provider.of<ImageReaderPage>(context, listen: false)
                              .images(Indes),
                        ),
                        fit: BoxFit.cover)),
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
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            arab[index],
                            textAlign: TextAlign.right,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              height: 2,
                              fontSize: value.arabivalueUpdate,
                              fontWeight: FontWeight.bold,
                              fontFamily: "AmiriQuran",
                            ),
                          ),
                        ),
                        // color: Colors.black,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: double.infinity,
                        color: const Color.fromARGB(14, 253, 198, 1),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            turkishlistvalu![index],
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              letterSpacing: .8,
                              fontSize: value.turkivalueUpdate,
                              fontWeight: FontWeight.bold,
                              fontFamily: "NotoSans",
                            ),
                          ),
                        ),
                        // color: Colors.black,
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      color: ligGreen.withOpacity(.2),
                    )
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
      title: const Text(
        'Font Size',
        style: TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
      ),
      content: Consumer<SliderWidget>(builder: (context, sliderWidget, _) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Arabic size "),
            Slider(
              divisions: 50,
              min: 28.0,
              max: 75.0,
              activeColor: ligGreen.withAlpha(82),
              thumbColor: Colors.green,
              inactiveColor: ligGreen.withAlpha(82),
              value: sliderWidget.arabivalueUpdate,
              onChanged: (value) {
                sliderWidget.arabicsetValue(value);
              },
            ),
            Text("Turkish size "),
            Slider(
              divisions: 50,
              min: 22.0,
              max: 75.0,
              activeColor: ligGreen.withAlpha(82),
              thumbColor: Colors.green,
              inactiveColor: ligGreen.withAlpha(82),
              value: sliderWidget.turkivalueUpdate,
              onChanged: (value) {
                sliderWidget.turkisetValue(value);
              },
            ),
          ],
        );
      }),
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
