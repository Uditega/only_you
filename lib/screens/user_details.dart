import 'package:OnlyYou/components/user_detail/details_section.dart';
import 'package:OnlyYou/components/user_detail/user_detail_appbar.dart';
import 'package:OnlyYou/models/user.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  final User? userDetails;
  const UserDetails({Key? key, this.userDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints){
      return Container(
        height: MediaQuery.of(context).size.height*1,
        width: MediaQuery.of(context).size.width*1,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(userDetails!.imageUrl!),
              fit: BoxFit.fill
          ),
        ),
        child: Stack(
          children: [
            userDetailAppBar(context),
            Positioned(
              bottom: 0,
              child: detailsSection(context, constraints, userDetails!),
            ),
          ],
        ),
      );
    });
  }
}
