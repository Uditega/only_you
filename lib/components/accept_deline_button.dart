import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

Widget acceptButton(){
  return Card(
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5)
    ),
    elevation: 0,
    color: OnlyYouColor.lightBlue,
    child:  Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 8),
        child: Text('Accept',
          style: TextStyle(
            color: OnlyYouColor.whiteColor,
            fontSize: 9,
            fontFamily: 'Poppins_Regular',
            decoration: TextDecoration.none,
          ),
        ),
      ),
    ),
  );
}

Widget declineButton(){
  return Card(
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      side: BorderSide(
        color: OnlyYouColor.mainText,
      ),
    ),
    elevation: 0,
    color: OnlyYouColor.whiteColor,
    child:  Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 8),
        child: Text('Decline',
          style: TextStyle(
            color: OnlyYouColor.mainText,
            fontSize: 9,
            fontFamily: 'Poppins_Regular',
            decoration: TextDecoration.none,
          ),
        ),
      ),
    ),
  );
}