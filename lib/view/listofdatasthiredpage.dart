// ignore_for_file: unused_local_variable, duplicate_ignore, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:ak/controler/reader_page_image.dart';
import 'package:ak/core.dart';
import 'package:ak/view/imageandicons.dart';
import 'package:ak/view/readingpageLast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class DataListpage extends StatelessWidget {
  const DataListpage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var mediaqurey = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appbarss(context),
      body: Consumer2<Imageicons, ImageReaderPage>(
          builder: (context, value, readerimage, child) {
        return SafeArea(
          child: Stack(
            children: [
              SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: value.blankBg
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
                              fontWeight: FontWeight.w900,
                              color: white),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: ListView.builder(
                          itemCount: farzname.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                                onTap: () async {
                                  final arabicdataksey =
                                      listofayath.keys.elementAt(index);
                                  final turkivalu = listofayath[arabicdataksey];
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) {
                                      return ReadPageLast(
                                        Indes: index,
                                        titlename: farzname[index],
                                        arab: arabicdataksey,
                                        imag: readerimage.images(index),
                                      );
                                    },
                                  ));
                                },
                                child: ListofNames(
                                  txst: farzname[index],
                                  Indexs: index,
                                ));
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
      }),
    );
  }
}

class ListofNames extends StatefulWidget {
  ListofNames(
      {Key? key, // Use Key? key instead of super.key
      required this.txst,
      required this.Indexs})
      : super(key: key);

  final dynamic txst;
  int Indexs;

  @override
  State<ListofNames> createState() => _ListofNamesState();
}

class _ListofNamesState extends State<ListofNames> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card( color: Colors.white,  shadowColor:Colors.black ,elevation: 10,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: Image.network(
                      "https://img.freepik.com/free-psd/quran-book-isolated_23-2151331073.jpg?size=338&ext=jpg&ga=GA1.1.1224184972.1711843200&semt=ais"),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(textAlign: TextAlign.center,
                      widget.txst.toString(),
                      maxLines: 3,
                      overflow: TextOverflow.clip, // Change to TextOverflow.clip
                      style: const TextStyle(
                        color: darkGreen,
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Container(
        //   child: ListTile(
        //     title: Padding(
        //       padding: const EdgeInsets.only(left: 25),
        //       child: Text(
        //         widget.txst.toString(),
        //         maxLines: 1,
        //         overflow: TextOverflow.ellipsis,
        //         style: const TextStyle(
        //           color: Colors.white,
        //           //  ligGreen,
        //           fontSize: 25,
        //           fontWeight: FontWeight.w500,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        // const Divider(
        //   thickness: 4,
        //   color: ligGreen,
        // )
      ],
    );
  }
}
