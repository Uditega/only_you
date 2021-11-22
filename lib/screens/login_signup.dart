import 'package:OnlyYou/components/login/login_image.dart';
import 'package:OnlyYou/components/login/tabbar_section.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints){
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                imageSection(constraints),
                SizedBox(
                  height: constraints.maxHeight*0.05,
                ),
                SizedBox(
                  height: constraints.maxHeight*0.6,
                    child: const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 30),
                      child: TabBarSection(),
                    )
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
