import 'dart:async';
import 'package:OnlyYou/screens/get_started.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 6),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const GetStarted())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SizedBox(
       height: MediaQuery.of(context).size.height *1,
       width: MediaQuery.of(context).size.width *1,
       child: Expanded(
           child: Image.asset('images/get started.png', fit: BoxFit.fill,)
       ),
     ),
    );
  }
}
