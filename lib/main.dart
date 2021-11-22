import 'package:OnlyYou/route_generator.dart';
import 'package:OnlyYou/screens/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      title: 'Only You',
      theme: CustomTheme.onlyYouTheme,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

