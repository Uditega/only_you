import 'package:OnlyYou/components/accept_deline_button.dart';
import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget videoCallNotification(context, picName, name, type){
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
                        Text('$type call request',
                          style: TextStyle(
                              fontSize: 11,
                            color: OnlyYouColor.subText
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                      declineButton(),
                      const SizedBox(width: 10),
                      acceptButton(),
                  ],
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