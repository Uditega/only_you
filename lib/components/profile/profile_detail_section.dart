import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

Widget profileDetailSection(constraints, proPic, name, country, age, description) {
  return Padding(
    padding: const EdgeInsets.only(top: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Hero(
            tag: proPic,
            child: const CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage('images/smileprofile.jpg'),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: constraints.maxWidth * 0.42,
                  child: Text(
                    '$name,  $age',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: OnlyYouColor.mainText, fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  '$country',
                  style: TextStyle(
                      color: OnlyYouColor.mainText, fontSize: 11),
                ),
              ],
            ),
            Card(
              elevation: 0,
              margin: EdgeInsets.zero,
              color: OnlyYouColor.whiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
                side: BorderSide(
                  color: OnlyYouColor.darkGrey,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                child: Text('Edit Profile',
                  style: TextStyle(
                      color: OnlyYouColor.mainText, fontSize: 10
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          'About Me',
          style: TextStyle(
              color: OnlyYouColor.mainText, fontSize: 14, fontWeight: FontWeight.w600
          ),
        ),
        const SizedBox(height: 5),
        Text(
          '$description',
          style: TextStyle(
              color: OnlyYouColor.mainText, fontSize: 11),
        ),
      ],
    ),
  );
}
