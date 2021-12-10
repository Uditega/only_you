import 'dart:ui';

import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

Widget moreInfoImageSection(context){
  return SizedBox(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('images/hand_two_fingers.png',
            height: MediaQuery.of(context).size.height*0.22,
              width: MediaQuery.of(context).size.width* 0.28,
            ),
            Text('You Rock',
              style: TextStyle(
                color: OnlyYouColor.mainText, fontSize: 24, fontWeight: FontWeight.w500,
                fontFamily: 'Poppins_Bold'
              ),
            ),
          ],
        ),
        const SizedBox( height: 10),
        Text('Let us know more\nabout you.',
          style: TextStyle(
            color: OnlyYouColor.mainText, fontSize: 18, fontWeight: FontWeight.w600
          ),
        ),
        const SizedBox( height: 12,),
      ],
    ),
  );
}