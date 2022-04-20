import 'package:flutter/material.dart';

class Message{

  String? imgUrl;
  String? name;
  String? chat;
  DateTime? dateSent;

  Message({
    @required this.imgUrl,
    @required this.name,
    @required this.chat,
    @required this.dateSent,
  });

}

 final List<Message> allMessage =[
   Message(
       imgUrl: 'images/firstGuy.jpg',
       name: 'Robert Fox',
       chat: 'Where do we meet?',
       dateSent: DateTime(2021,10,15),
   ),
 ];