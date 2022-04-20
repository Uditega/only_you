import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

Widget messageCard(context, picName, name, messages, time){
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
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundImage: AssetImage("$picName"),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width *0.35,
                          child: Text('$name',
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 13
                            ),
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text('$messages',
                          style: TextStyle(
                              fontSize: 11,
                              color: OnlyYouColor.subText
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Text('$time',
                  style: TextStyle(
                      fontSize: 11,
                      color: OnlyYouColor.subText
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      const SizedBox(height: 15,),
    ],
  );
}