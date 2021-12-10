import 'dart:ui';

import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

Widget searchField(constraints){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Find your\nperfect match',
        style: TextStyle(
            color: OnlyYouColor.mainText, fontSize: 18, fontWeight: FontWeight.w600
        ),
      ),
      const SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: constraints.maxWidth*0.7,
            height: constraints.maxHeight* 0.08,
            child: Card(
              elevation: 0,
              color: OnlyYouColor.boxLightGrey ,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 15, top: 12),
                child: Text('Search by age, name, location',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.zero,
            decoration: BoxDecoration(
              color: OnlyYouColor.whiteColor,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 10,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search_rounded,
                color: Colors.grey.shade500,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}