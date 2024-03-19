import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

class Conutpagecontoller extends ChangeNotifier {
  dynamic addvalue;
// int? valuee;
  int data = 0;
  bool duration = true;
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

  dynamic addvalues(bool durat) {
    // int data=0 ;
    if (duration == durat) {
      Vibration.vibrate(duration: 10);
    }

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
