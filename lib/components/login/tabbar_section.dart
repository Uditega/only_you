import 'package:OnlyYou/components/login/login_input.dart';
import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

class TabBarSection extends StatefulWidget {
  const TabBarSection({Key? key}) : super(key: key);

  @override
  _TabBarSectionState createState() => _TabBarSectionState();
}

class _TabBarSectionState extends State<TabBarSection> {

  bool _isLogin = true;

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (ctx, constraints){
      return  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      _isLogin = true;
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text('Login',
                       style: TextStyle(
                         color: _isLogin? OnlyYouColor.mainText: OnlyYouColor.subText,
                         fontSize:_isLogin? 16 : 14,
                         fontFamily: 'Poppins_Regular',
                         fontWeight: _isLogin ? FontWeight.w600 : FontWeight.w500,
                         decoration: TextDecoration.none,
                       ),
                     ),
                     _isLogin ? Card(
                       color: OnlyYouColor.lightRed,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(3.0)
                       ),
                       child: Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 27,),
                         child: Text('a',
                           style: TextStyle(color: OnlyYouColor.lightRed,fontSize: 3),
                         ),
                       ),
                     ): Container(),
                   ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      _isLogin = false;
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Sign Up',
                        style: TextStyle(
                          color: _isLogin? OnlyYouColor.subText :OnlyYouColor.mainText ,
                          fontSize:_isLogin? 14 : 16,
                          fontFamily: 'Poppins_Regular',
                          fontWeight: _isLogin ? FontWeight.w500 : FontWeight.w600 ,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      _isLogin ? Container():
                      Card(
                        color: OnlyYouColor.lightRed,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3.0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 27,),
                          child: Text('t',
                          style: TextStyle(color: OnlyYouColor.lightRed,fontSize: 3),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
         _isLogin? Container() : loginInputField('Full Name', constraints),
          loginInputField('Email address', constraints),
          loginInputField('Password', constraints),
          Container(
            alignment: Alignment.topRight,
            child: Text('Forget Password?',
              style: TextStyle(fontSize: 10, color: OnlyYouColor.lightBlack,),
            ),
          ),
          const SizedBox(height: 7),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/MoreInfo');
            },
            child: SizedBox(
              height: MediaQuery.of(context).size.height *0.075,
              width: MediaQuery.of(context).size.width *1,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                ),
                elevation: 0,
                color: OnlyYouColor.lightRed,
                child:  Center(
                  child: Text(_isLogin? 'Login': 'Sign Up',
                    style: TextStyle(
                      color: OnlyYouColor.whiteColor,
                      fontSize: 13.5,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      );
    });
  }
}
