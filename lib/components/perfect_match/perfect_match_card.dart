import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

Widget perfectMatchCard(context, picName, name, percentage){
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
                    Text('$name',
                      style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 13
                      ),
                    ),
                  ],
                ),
                Text('$percentage %',
                  style: const TextStyle(
                      fontSize: 13
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      const SizedBox(height: 20,),
    ],
  );
}