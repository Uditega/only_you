import 'package:OnlyYou/components/button.dart';
import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1,
      width: MediaQuery.of(context).size.width * 1,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/splash screen.png'), fit: BoxFit.fill),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 65, 20, 0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Find true\nlove',
                style: TextStyle(
                    color: OnlyYouColor.mainText,
                    fontSize: 32,
                    fontFamily: 'Poppins_Medium',
                    decoration: TextDecoration.none,
                    letterSpacing: 1.5),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
              ),
              Center(
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/LoginSignup');
                  },
                  child: regularButton(
                      context, 0.085, 0.4, OnlyYouColor.lightRed, 'Get started'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
