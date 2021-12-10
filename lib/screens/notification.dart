import 'package:OnlyYou/components/notification/likes_notification.dart';
import 'package:OnlyYou/components/notification/matches_update_notification.dart';
import 'package:OnlyYou/components/notification/notification_appbar.dart';
import 'package:OnlyYou/components/notification/video_call_notification.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: notificationAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              videoCallNotification(context, 'images/fifthGuy.jpg', 'Marvin Collins', 'Video'),
              videoCallNotification(context, 'images/firstGuy.jpg', 'Robert Fox', 'Voice'),
              likesNotification(context, 'images/thirdGuy.jpg', 'Jacob Jones'),
              likesNotification(context, 'images/secondGuy.jpg', 'leslie Alexander'),
              matchesNotification(context, '10'),
            ],
          ),
        ),
      )
    );
  }
}

