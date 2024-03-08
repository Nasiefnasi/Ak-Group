import 'package:ak/core.dart';
import 'package:flutter/material.dart';

class Topcirculeicons extends StatelessWidget {
  const Topcirculeicons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const CircleAvatar(
            radius: 22,
            backgroundColor: ligGreen,
            child: Icon(
              Icons.volume_up_rounded,
              color: darkGreen,
              size: 25,
            )),
        const CircleAvatar(
            radius: 22,
            backgroundColor: ligGreen,
            child: Icon(
              Icons.bookmark_border,
              color: darkGreen,
              size: 25,
            )),
        CircleAvatar(
          radius: 22,
          backgroundColor: ligGreen,
          child: Container(
            width: 50,
            height: 30,
            child: const Image(
              image: AssetImage(
                  "image/counder-icon-01.png"),
            ),
          ),
        ),
        const CircleAvatar(
            radius: 22,
            backgroundColor: ligGreen,
            child: Icon(
              Icons.abc,
              color: darkGreen,
              size: 25,
            )),
        const CircleAvatar(
            radius: 22,
            backgroundColor: ligGreen,
            child: Icon(
              Icons.abc,
              color: darkGreen,
              size: 25,
            ))
      ],
    );
  }
}