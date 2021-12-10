import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget userProfileAppBar(context){
  return AppBar(
    backgroundColor : OnlyYouColor.whiteColor,
    elevation: 0,
    leading: IconButton(
      onPressed: (){
        Navigator.pop(context);
      },
      icon:  Icon(Icons.arrow_back_rounded,
        color: OnlyYouColor.mainText,
      ),
    ),
    title: Text('Profile',
      style:  TextStyle(
        color: OnlyYouColor.mainText,
        fontSize: 18,
      ),
    ),
  );
}