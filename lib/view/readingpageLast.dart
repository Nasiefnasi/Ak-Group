// ignore_for_file: file_names

import 'package:ak/core.dart';
import 'package:flutter/material.dart';

class ReadPageLast extends StatelessWidget {
  const ReadPageLast({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaqurey = MediaQuery.of(context).size;
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
          actions: const [
            Icon(Icons.table_rows_rounded),
            SizedBox(
              width: 25,
            ),
          ]),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: mediaqurey.height * .1,
            width: double.infinity,
            color: ligGreen,
            child: const Center(
              child: Text(
                "MUHTELİF SALAVATLAR",
                style: TextStyle(
                    fontSize: 28, fontWeight: FontWeight.w500, color: white),
              ),
            ),
          ),
          Expanded(child: Container(color: Colors.amber,)),
          Expanded (child: Container(color: Colors.black,))
        ],
      )),
    );
  }
}
