// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names, sort_child_properties_last, file_names
import 'package:ak/core.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

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
      backgroundColor: darkGreen,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1 / .7,
          children: const [
            SecondGridviewpage(
                Texts: "FARZ NAMAZLARA\nAİT ZİKİRLER",
                imag: "image/FARZ NAMAZLARA-01.png"),
            SecondGridviewpage(
                Texts: "DUALAR VE ZIR", imag: "image/DUALAR VE ZIR-01.png"),
            SecondGridviewpage(
                Texts: "MÜBAREK\nHİZBLER", imag: "image/MÜBAREK-01.png"),
            SecondGridviewpage(
                Texts: "MUHTELİF\nSALAVATLAR", imag: "image/MUHTELİF-01.png"),
            SecondGridviewpage(
                Texts: "KASİDELER", imag: "image/KASİDELER-01.png"),
            SecondGridviewpage(
                Texts: "ESMAULLAH\nİLE TEVESSÜL",
                imag: "image/ESMAULLAH-01.png"),
            SecondGridviewpage(
                Texts: "DUALAR", imag: "image/DUALAR VE ZIR-01.png"),
            SecondGridviewpage(
                Texts: "KATRE FM", imag: "image/KATRE-01-01.png"),
          ],
        ),
      )),
    );
  }
}

class SecondGridviewpage extends StatelessWidget {
  const SecondGridviewpage({
    super.key,
    required this.imag,
    required this.Texts,
  });
  final String imag;
  final String Texts;

  @override
  Widget build(BuildContext context) {
    var mediaqurey = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  width: mediaqurey.width * .2,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image(image: AssetImage(imag)),
                  ),
                )),
            Expanded(
                child: Container(
              height: 20,
              width: mediaqurey.width * .4,
              child: Center(
                  child: Text(
                Texts,
                style: const TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w400, color: gray),
                textAlign: TextAlign.center,
              )),
            )),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
