import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

Widget matchMakerButton(context){
  return Column(
    children: [
      Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height *0.068,
          width: MediaQuery.of(context).size.width *0.7,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            elevation: 0,
            color: OnlyYouColor.lightRed,
            child:  Center(
              child: Text('Play match maker to find a match',
                style: TextStyle(
                  color: OnlyYouColor.whiteColor,
                  fontSize: 11,
                  fontFamily: 'Poppins_Regular',
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
        ),
      ),
      const SizedBox(height: 25),
    ],
  );
}