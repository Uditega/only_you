import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

class CustomTheme {
    static ThemeData get onlyYouTheme{
      return ThemeData(
        fontFamily: 'Poppins_Regular',
        scaffoldBackgroundColor: OnlyYouColor.whiteColor,
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: OnlyYouColor.whiteColor,
          iconTheme: IconThemeData(color: OnlyYouColor.mainText),
          titleTextStyle: TextStyle(
            color: OnlyYouColor.mainText,
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
          ),
          actionsIconTheme: IconThemeData(
              color: OnlyYouColor.mainText
          ),
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: OnlyYouColor.mainText,
          )
        ),
      );
    }

}