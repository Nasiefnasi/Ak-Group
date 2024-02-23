import 'package:flutter/material.dart';

class Imageicons extends ChangeNotifier {
  final image = Image.asset(
    "image/SplashpageBG-01.png",
    fit: BoxFit.cover,
  );
  notifyListeners();
  
}
