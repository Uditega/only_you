import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget chatAppBar(context, name){
  return AppBar(
    backgroundColor : OnlyYouColor.whiteColor,
    elevation: 0,
    leading: IconButton(
      onPressed: (){
        Navigator.pop(context);
      },
      icon: const Icon(Icons.chevron_left_rounded,
      ),
    ),
    title: Text('$name'),
    actions: [
      IconButton(
          onPressed:(){},
          icon: const Icon(Icons.videocam_outlined),
      ),
      IconButton(
        onPressed:(){},
        icon: const Icon(Icons.call_outlined),
      ),
    ],
  );
}