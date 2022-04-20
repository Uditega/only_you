import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';

Widget  senderTickBubble(chat, time){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: OnlyYouColor.boxLightGrey,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(20),
            bottomRight: Radius.circular(1),
            bottomLeft: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 100,
            ),
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text('$chat'),
        ),
      ),
      Text('$time')
    ],
  );
}


Widget receiverTick(chat){
  return  BubbleNormal(
    text: '$chat',
    isSender: false,
    color: OnlyYouColor.boxLightGrey,
    tail: true,
    textStyle: const TextStyle(
      fontSize: 20,
      color: Colors.white,
    ),
  );
}


Widget senderTick(chat){
  return  BubbleNormal(
    text: '$chat',
    isSender: true,
    color: OnlyYouColor.lightRed,
    tail: true,
    sent: true,
  );
}

Widget dateChip(year, month, day ){
  return  DateChip(
    date: DateTime(year,month, day),
    color: OnlyYouColor.darkGrey,
  );
}