import 'package:OnlyYou/components/home/grid_user.dart';
import 'package:OnlyYou/components/home/logo_section.dart';
import 'package:OnlyYou/components/home/search_field.dart';
import 'package:flutter/material.dart';

// import 'package:avatar_glow/avatar_glow.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              logoSection(context, 'hey'),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      searchField(constraints),
                      const SizedBox(height: 20,),
                      SizedBox(
                        height: constraints.maxHeight*0.57,
                        child: gridUser(constraints, context),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
