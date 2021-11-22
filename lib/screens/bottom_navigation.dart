import 'package:OnlyYou/screens/home_page.dart';
import 'package:OnlyYou/screens/message_screen.dart';
import 'package:OnlyYou/screens/notification.dart';
import 'package:OnlyYou/screens/perfect_match.dart';
import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int _currentIndex = 0;
  final _children =[
    const HomePage(),
    const PerfectMatch(),
    const NotificationPage(),
    const MessagePage(),
  ];

  @override
  Widget build(BuildContext context) {

    void onTappedBar (int index){
      setState(() {
        _currentIndex = index;
      });
    };

    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _currentIndex,
        onTap: onTappedBar,
        backgroundColor: OnlyYouColor.whiteColor,
        selectedIconTheme: IconThemeData(
          color: OnlyYouColor.lightRed,
        ),
        unselectedIconTheme: IconThemeData(
          color: OnlyYouColor.subText,
        ),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_max_rounded)),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_rounded)),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_none_rounded)),
          BottomNavigationBarItem(icon: Icon(Icons.email_outlined)),
        ],
      ),
    );
  }
}
