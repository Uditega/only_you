import 'package:OnlyYou/components/more_info/gender_card.dart';
import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

Widget genderSelector(context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Who are you interested in?',
        style: TextStyle(
          fontSize: 10,
          color: OnlyYouColor.lightBlack,
        ),
      ),
      const SizedBox(height: 13),
      SizedBox(
          height: MediaQuery.of(context).size.height*0.1,
          width: MediaQuery.of(context).size.width*1,
          child: const GenderCard(),
      ),
    ],
  );
}
