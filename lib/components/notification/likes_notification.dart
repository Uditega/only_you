import 'package:OnlyYou/components/button.dart';
import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

Widget likesNotification(context, picName, name){
  return Column(
    children: [
      SizedBox(
        width: MediaQuery.of(context).size.width*1,
        child: Card(
          margin: EdgeInsets.zero,
          elevation: 0,
          color: OnlyYouColor.boxLightGrey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundImage: AssetImage("$picName"),
                    ),
                    const SizedBox(width: 20),
                    Text('$name likes you',
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 13
                      ),
                    ),
                  ],
                ),
                Card(
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                  ),
                  elevation: 0,
                  color: OnlyYouColor.lightRed,
                  child:  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      child: Text('Send Love',
                        style: TextStyle(
                          color: OnlyYouColor.whiteColor,
                          fontSize: 10,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      const SizedBox(height: 20,),
    ],
  );
}