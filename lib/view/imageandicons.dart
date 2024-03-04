// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Imageicons extends ChangeNotifier {
  final splashimage = Image.asset(
    "image/SplashpageBG-01.png",
    fit: BoxFit.cover,
  );
  dynamic imagess = Image.asset(
    "image/Splash-01.png",
    fit: BoxFit.cover,
  );

  final farz = Image.asset(
    "image/DUALAR VE ZIR-01.png",
  );
  final Dualar = Image.asset(
    "image/DUALAR VE ZIR-01.png",
  );
  final Mubarek = Image.asset(
    "image/MÜBAREK-01.png",
  );
  final Muhtelif = Image.asset(
    "image/MUHTELİF-01.png",
  );
  final Kasideler = Image.asset(
    "image/KASİDELER-01.png",
  );
  final Esmaullah = Image.asset(
    "image/ESMAULLAH-01.png",
  );
  final katre = Image.asset(
    "image/KATRE-01-01.png",
  );

final blankBg = Image.asset("image/3 page BG image-01.png",fit: BoxFit.cover,);
  notifyListeners();
}
