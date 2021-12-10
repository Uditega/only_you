import 'package:OnlyYou/components/user_detail/selection_perfectmatch.dart';
import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:OnlyYou/screens/user_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:OnlyYou/models/user.dart';

Widget detailsSection(context, constraints,User userPerson) {
  return SizedBox(
    width: constraints.maxWidth * 1,
    child: Card(
      margin: EdgeInsets.zero,
      elevation: 0,
      color: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => UserProfile(userDetails: userPerson),
                          ),
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: constraints.maxWidth * 0.47,
                            child: Text(userPerson.name!,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: OnlyYouColor.whiteColor, fontSize: 16),
                            ),
                          ),
                          Text(userPerson.country!,
                            style: TextStyle(
                                color: OnlyYouColor.whiteColor, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 45,
                    ),
                    Text(userPerson.age!.toString(),
                      style: TextStyle(
                          color: OnlyYouColor.whiteColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Card(
                  margin: EdgeInsets.zero,
                  elevation: 0,
                  color: OnlyYouColor.lightRed,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 9),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.email_outlined,
                          color: OnlyYouColor.whiteColor,
                          size: 20,
                        ),
                        Text(
                          'Chat',
                          style: TextStyle(
                              color: OnlyYouColor.whiteColor, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              'About Me',
              style: TextStyle(color: OnlyYouColor.whiteColor, fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(userPerson.description!,
              style: TextStyle(color: OnlyYouColor.whiteColor, fontSize: 11),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: constraints.maxHeight*0.09,
              child: const SelectPrefectMatch(),
            ),
          ],
        ),
      ),
    ),
  );
}
