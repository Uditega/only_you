import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

Widget logoSection(context, proPic){
  return Padding(
    padding: const EdgeInsets.only(left: 10,right: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('images/logo.png',
              height: MediaQuery.of(context).size.height*0.14,
              width: MediaQuery.of(context).size.width* 0.22,
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: (){
                Navigator.pushNamed(context, '/Profile');
              },
              child: Hero(
                tag: proPic,
                child: const CircleAvatar(
                  radius: 21,
                  backgroundImage: AssetImage('images/smileprofile.jpg'),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
      ],
    ),
  );
}