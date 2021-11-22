import 'package:flutter/material.dart';

Widget imageSection(constraints){
  return SizedBox(
    width: constraints.maxWidth*1,
    height: constraints.maxHeight*0.3,
    child: Stack(
      children: [
        Image.asset("images/male cartoon.png"),
        // Image.asset("images/log in.png"),
        Positioned(
          left: 115,
          bottom: 3,
          child: Image.asset("images/lady cartoon.png",
            width: 250,
          ),
        ),
      ],
    ),
  );
}