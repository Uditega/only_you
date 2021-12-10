import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

Widget userDetailAppBar(context){
  return Padding(
    padding: const EdgeInsets.only(top: 35, right: 20, left: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_rounded,
            color: OnlyYouColor.whiteColor,
          ),
        ),
        Icon(Icons.more_vert,
          color: OnlyYouColor.whiteColor,
        ),
      ],
    ),
  );
}