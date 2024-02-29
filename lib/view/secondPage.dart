// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names, sort_child_properties_last, file_names
import 'package:ak/core.dart';
import 'package:ak/view/imageandicons.dart';
import 'package:ak/view/listofdatasthiredpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DuaPage extends StatefulWidget {
  const DuaPage({Key? key}) : super(key: key);

  @override
  _DuaPageState createState() => _DuaPageState();
}

class _DuaPageState extends State<DuaPage> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      Provider.of<Imageicons>(context, listen: false);
    });
    // Provider.of<Imageicons>(context, listen: false);
    var mediaqurey = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: mediaqurey.width,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            border: Border.all(width: 3, color: ligGreen),
          ),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text("ARAMAK", style: TextStyle(fontSize: 15)),
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 2, 113, 96),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.chevron_left_rounded,
            size: 40,
          ),
        ),
        actions: const [
          Icon(Icons.table_rows_rounded),
          SizedBox(
            width: 25,
          ),
        ],
      ),
      backgroundColor: darkGreen,
      body: Consumer<Imageicons>(
        builder: (context, value, child) {
          return Center(
              child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1 / .7,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const DataListpage();
                        },
                      ));
                    },
                    child: SecondGridviewpage(
                        Texts: "FARZ NAMAZLARA\nAİT ZİKİRLER",
                        imag: value.farz),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const DataListpage();
                        },
                      ));
                    },
                    child: SecondGridviewpage(
                        Texts: "DUALAR VE ZIR", imag: value.Dualar),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const DataListpage();
                        },
                      ));
                    },
                    child: SecondGridviewpage(
                        Texts: "MÜBAREK\nHİZBLER", imag: value.Mubarek),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const DataListpage();
                        },
                      ));
                    },
                    child: SecondGridviewpage(
                        Texts: "MUHTELİF\nSALAVATLAR", imag: value.Muhtelif),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const DataListpage();
                        },
                      ));
                    },
                    child: SecondGridviewpage(
                        Texts: "KASİDELER", imag: value.Kasideler),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const DataListpage();
                        },
                      ));
                    },
                    child: SecondGridviewpage(
                        Texts: "ESMAULLAH\nİLE TEVESSÜL",
                        imag: value.Esmaullah),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const DataListpage();
                        },
                      ));
                    },
                    child:
                        SecondGridviewpage(Texts: "DUALAR", imag: value.Dualar),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const DataListpage();
                        },
                      ));
                    },
                    child: SecondGridviewpage(
                        Texts: "KATRE FM", imag: value.katre),
                  ),
                ],
              ),
            ),
          ));
        },
      ),
    );
  }
}

class SecondGridviewpage extends StatelessWidget {
  const SecondGridviewpage({
    Key? key,
    required this.imag,
    required this.Texts,
  }) : super(key: key);

  final dynamic imag;
  final String Texts;

  @override
  Widget build(BuildContext context) {
    var mediaqurey = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: mediaqurey.width * .2,
                child: Padding(padding: const EdgeInsets.all(5.0), child: imag),
              ),
            ),
            Expanded(
              child: Container(
                height: 20,
                width: mediaqurey.width * .4,
                child: Center(
                  child: Text(
                    Texts,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: gray,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
