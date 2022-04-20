import 'package:OnlyYou/components/chat_bubble/chat_appbar.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: chatAppBar(context, 'Robert Fox'),
    );
  }
}
