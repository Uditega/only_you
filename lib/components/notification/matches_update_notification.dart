import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

Widget matchesNotification(context, number){
  return Column(
    children: [
      SizedBox(
        width: MediaQuery.of(context).size.width*1,
        child: Card(
          margin: EdgeInsets.zero,
          elevation: 0,
          color: OnlyYouColor.boxLightGrey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('$number new matches',
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 13
                  ),
                ),
                Card(
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                  ),
                  elevation: 0,
                  color: OnlyYouColor.lightBlue,
                  child:  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      child: Text('View all',
                        style: TextStyle(
                          color: OnlyYouColor.whiteColor,
                          fontSize: 10,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      const SizedBox(height: 20,),
    ],
  );
}