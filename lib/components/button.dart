import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

Widget regularButton(context, height, width,color, text){
  return SizedBox(
    height: MediaQuery.of(context).size.height *height,
    width: MediaQuery.of(context).size.width *width,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25)
      ),
      elevation: 0,
      color: color,
      child:  Center(
        child: Text('$text',
          style: TextStyle(
              color: OnlyYouColor.whiteColor,
              fontSize: 15,
              fontFamily: 'Poppins_Regular',
              decoration: TextDecoration.none,
          ),
        ),
      ),
    ),
  );
}