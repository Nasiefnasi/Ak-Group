import 'package:flutter/material.dart';

class Conutpage extends ChangeNotifier {
  dynamic addvalue;
// int? valuee;
  int data = 0;
  clearvalues(){
    data = 0;
    notifyListeners();
  }
  dynamic addvalues() {
    // int data=0 ;

    if (data < 999) {
      addvalue = data;
      data++;
    }else{
      data = 0;
    }
    print(addvalue.toString());

    notifyListeners();
// return\ addvalue;
  }
}
