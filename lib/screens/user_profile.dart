import 'package:OnlyYou/components/user_profile/user_profile_appbar.dart';
import 'package:OnlyYou/components/user_profile/user_profile_details.dart';
import 'package:OnlyYou/components/user_profile/user_uploads.dart';
import 'package:OnlyYou/models/user.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final User? userDetails;
  const UserProfile({Key? key, this.userDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints){
      return Scaffold(
        appBar: userProfileAppBar(context),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: userProfileDetail(
                      constraints,
                      userDetails!.imageUrl!,
                      userDetails!.name!,
                      userDetails!.country!,
                      userDetails!.age!,
                      userDetails!.description!
                  ),
                ),
                const SizedBox(height: 13,),
                SizedBox(
                  height: MediaQuery.of(context).size.height *0.43,
                  child: userUploads(),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
