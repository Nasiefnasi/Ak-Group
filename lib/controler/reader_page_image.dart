import 'package:ak/core.dart';
import 'package:ak/view/readingpageLast.dart';
import 'package:flutter/material.dart';

class ImageReaderPage extends ChangeNotifier {
  images(int inde) {
    // final int imageindexs
    List<String> SuraImagepath = [
      "image/1a@33.33x.png",
      "image/1b@33.33x.png",
      "image/1c@33.33x.png"
    ];
    notifyListeners();
    return SuraImagepath[inde].toString();
  }

  appbarss(Size mediaqurey, BuildContext context) {
    return AppBar(
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
        ]);
  }
}

appbarss(BuildContext context) {
  return AppBar(
      toolbarHeight: 90,
      centerTitle: true,
      title: Container(
          // width: 20,
          height: 60,
          // decoration: BoxDecoration(
          //     // borderRadius: const BorderRadius.all(Radius.circular(8)),
          //     border: Border.all(width: 3, color: ligGreen)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("image/KATRE FM-liggreen-01.png"),
              const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "الأذكـــار الآمـــدي",
                    style: TextStyle(
                        fontFamily: "me_quran",
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    "EZKAR EL-AMEDI",
                    style: TextStyle(
                        fontFamily: "me_quran",
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )
                ],
              )
            ],
          )
          //  Align(
          //     alignment: Alignment.centerLeft,
          //     child: Padding(
          //       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          //       child: Text("ARAMAK", style: TextStyle(fontSize: 15)),

          //     )
          //     ),
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
      ]);
}
