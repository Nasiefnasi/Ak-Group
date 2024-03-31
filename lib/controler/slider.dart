import 'package:flutter/material.dart';

// class SliderWidget extends ChangeNotifier{
//   double valueupdate = 0.0;


//   slider(BuildContext context){
//     // valueupdate=data;
//     // notifyListeners();
//  return  showDialog<String>(
//                     context: context,
//                     builder: (BuildContext context) => AlertDialog(
//                       title: const Text('Customized'),
//                       // content: const Text('Here we can add the description of the alert'),
//                       content: SizedBox(
//                         height: 80,
//                         child: Column(
//                           children: [
//                             // value.slider(),
//                             Slider(
//                               divisions: 100,
//                               min: 0.0,
//                               max: 100.0,
//                               value:valueupdate ,
//                               onChanged: (values) {
                              
                              
//                                  valueupdate = values;
//                                  notifyListeners();
                               
//                               },
//                             )
//                           ],
//                         ),
//                       ),
//                       actions: <Widget>[
//                         TextButton(
//                           onPressed: () => Navigator.pop(context, 'Cancel'),
//                           child: const Text('Cancel'),
//                         ),
//                         TextButton(
//                           onPressed: () => Navigator.pop(context, 'OK'),
//                           child: const Text('OK'),
//                         ),
//                       ],
//                     ),
                    
//                   );
                  
                      


// }
// }
class SliderWidget extends ChangeNotifier {
  double _valueUpdate = 25.0;

  double get valueUpdate => _valueUpdate;

  void setValue(double value) {
    _valueUpdate = value;
    notifyListeners();
  }
}