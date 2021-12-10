// import 'package:provider/provider.dart';
import 'package:OnlyYou/components/profile/profile_appbar.dart';
import 'package:OnlyYou/components/profile/profile_detail_section.dart';
import 'package:OnlyYou/components/profile/upload_pic.dart';
import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints){
      return Scaffold(
        backgroundColor: OnlyYouColor.whiteColor,
        appBar: profileAppBar(context),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    profileDetailSection(constraints, 'hey', 'Ivory Stacy', 'Ghana', '25',
                        'I am UI/UX designer, i love cooking, singing, shopping, creating kick ass'
                            ' project, cant dance to save myself, enjoy korean movies and am BTS crazy'
                            ' fan. I love adventurous  and daring men.'
                    ),
                    const SizedBox(height: 13,),
                    SizedBox(
                      height: MediaQuery.of(context).size.height *0.5,
                      child: uploadedPic(),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
                child: AvatarGlow(
                  animate: true,
                    curve: Curves.bounceInOut,
                    showTwoGlows: true,
                    startDelay: const Duration(milliseconds: 1000),
                    repeatPauseDuration: const Duration(milliseconds: 400),
                    child: Material(
                      elevation: 2.0,
                      shape: const CircleBorder(),
                      child: CircleAvatar(
                        radius: 25.0,
                        backgroundColor: OnlyYouColor.lightRed,
                        child: Icon(Icons.add,
                          size: 25, color: OnlyYouColor.whiteColor,
                        ),
                      ),
                    ),
                    endRadius: 50.0,
                  glowColor: Colors.red.shade300,
                ),
            ),
          ],
        ),
      );
    });
  }
}
