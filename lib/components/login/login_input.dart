import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

Widget loginInputField(text, constraints){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$text',
          style: TextStyle(
            fontSize: 10,
            color: OnlyYouColor.lightBlack,
          ),
        ),
        const SizedBox(height: 11),
        Container(
          margin: EdgeInsets.zero,
          height: constraints.maxHeight*0.13,
          width: constraints.maxWidth*1,
          decoration: BoxDecoration(
            color: OnlyYouColor.boxLightGrey,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TextField(
              style: TextStyle(
                fontSize: 14,
                color: OnlyYouColor.lightBlack,
              ),
              decoration: const InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
      ],
  );
}