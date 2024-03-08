// ignore_for_file: unused_local_variable, duplicate_ignore, avoid_unnecessary_containers

import 'package:ak/core.dart';
import 'package:ak/view/imageandicons.dart';
import 'package:ak/view/readingpageLast.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DataListpage extends StatelessWidget {
  const DataListpage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> nameofdata = [
      "Salat-i Kamiliyye",
      "Salavat-ul Fatihi",
      "Salavat-ul Bedeiviyye",
      "Salat-ul Kemaliyye",
      "Sifa Salavati",
      "Salat-ul Amediyye",
      "Kenzul Azam Salavati"
    ];
    // ignore: unused_local_variable
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
      body: Consumer<Imageicons>(builder: (context, value, child) {
        return
      
       SafeArea(
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child:value.blankBg
                // Image.asset(
                //   "image/3 page BG image-01.png",
                //   fit: BoxFit.cover,
                // ), 
              ),
              SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  children: [
                    // SizedBox(height: 20,),
                    Container(
                      height: mediaqurey.height * .1,
                      width: double.infinity,
                      color: ligGreen,
                      child: const Center(
                        child: Text(
                          "MUHTELİF SALAVATLAR",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              color: white),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: ListView.builder(
                          itemCount: nameofdata.length,
                          itemBuilder: (context, index) {
                            return InkWell( onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return  const  ReadPageLast();
                              },));
                            },  child: ListofNames(txst: nameofdata[index]));
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
   } ),
    );
  }
}

class ListofNames extends StatefulWidget {
  const ListofNames({
    Key? key, // Use Key? key instead of super.key
    required this.txst,
  }) : super(key: key);

  final String txst;

  @override
  State<ListofNames> createState() => _ListofNamesState();
}

class _ListofNamesState extends State<ListofNames> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                widget.txst.toString(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: ligGreen,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        const Divider(
          thickness: 4,
          color: ligGreen,
        )
      ],
    );
  }
}
