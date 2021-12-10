import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget profileAppBar(context){
  return AppBar(
    backgroundColor : OnlyYouColor.whiteColor,
    elevation: 0,
    leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_rounded,
        ),
    ),
    title: const Text('My Profile',
    ),
  );
}