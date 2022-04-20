import 'package:OnlyYou/components/messages/message_appbar.dart';
import 'package:OnlyYou/components/messages/message_card.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: messageAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            messageCard(context, 'images/firstGuy.jpg', 'Robert Fox', 'Where do we meet?', '10 : 34 pm'),
            messageCard(context, 'images/secondGuy.jpg', 'Leslie Alexander', 'Am available for you dear?', '09 : 34 am'),
          ],
        ),
      ),
    );
  }
}
