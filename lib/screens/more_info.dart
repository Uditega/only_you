import 'package:OnlyYou/components/button.dart';
import 'package:OnlyYou/components/login/login_input.dart';
import 'package:OnlyYou/components/more_info/gender_selector.dart';
import 'package:OnlyYou/components/more_info/image_section.dart';
import 'package:OnlyYou/components/more_info/more_info_input.dart';
import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

class MoreInfo extends StatelessWidget {
  const MoreInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: constraints.maxHeight*0.34,
                    child: moreInfoImageSection(context),
                  ),
                  genderSelector(context),
                  moreInfoInputField('How old are you?', constraints),
                  moreInfoInputField('Location', constraints),
                  SizedBox(height: constraints.maxHeight*0.03),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: (){
                      Navigator.pushNamed(context, '/BottomNavigation');
                    },
                    child: regularButton(
                        context, 0.08, 0.8, OnlyYouColor.lightRed, 'Continue'),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
