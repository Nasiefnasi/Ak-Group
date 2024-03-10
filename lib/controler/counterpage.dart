import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

class Conutpage extends ChangeNotifier {
  dynamic addvalue;
// int? valuee;
  int data = 0;
  lessvalues() {
    if (data < 99999 && data > 0) {
      data--;
    }

    notifyListeners();
  }

  clearvalues(BuildContext context) {
    data = 0;
    notifyListeners();
    Navigator.pop(context);
  }

  dynamic addvalues() {
    // int data=0 ;
Vibration.vibrate(duration: 0);
    if (data < 9999) {
      addvalue = data;
       data++;
    } else {
      data = 0;
    }
    print(addvalue.toString());

    notifyListeners();
// return\ addvalue;
  }
}
