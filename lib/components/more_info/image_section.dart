import 'dart:ui';

import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

Widget moreInfoImageSection(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('images/hand_two_fingers.png'),
          Text('You Rock',
            style: TextStyle(
              color: OnlyYouColor.mainText, fontSize: 24, fontWeight: FontWeight.w600
            ),
          ),
        ],
      ),
      const SizedBox( height: 7,),
      Text('Let us know more\nabout you.',
        style: TextStyle(
          color: OnlyYouColor.mainText, fontSize: 16, fontWeight: FontWeight.w600
        ),
      ),
      const SizedBox( height: 12,),
    ],
  );
}