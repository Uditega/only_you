import 'package:OnlyYou/screens/bottom_navigation.dart';
import 'package:OnlyYou/screens/error_screen.dart';
import 'package:OnlyYou/screens/login_signup.dart';
import 'package:OnlyYou/screens/more_info.dart';
import 'package:OnlyYou/screens/profile.dart';
import 'package:OnlyYou/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name){
      case '/' :
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/LoginSignup' :
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case '/MoreInfo' :
        return MaterialPageRoute(builder: (_) => const MoreInfo());
      case '/BottomNavigation' :
        return MaterialPageRoute(builder: (_) => const BottomNavigation());
      case '/Profile' :
        return MaterialPageRoute(builder: (_) => const Profile());
    }
    return MaterialPageRoute(builder: (_) =>const ErrorScreen());
  }
}