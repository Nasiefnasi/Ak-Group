import 'package:ak/view/imageandicons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Imageicons>(
      builder: (context, value, child) {
        return Scaffold(
          body: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: value.blankBg,
              ),
              Container (width: double.infinity,height: double.infinity,)
            ],
          ),
        );
      },
    );
  }
}
