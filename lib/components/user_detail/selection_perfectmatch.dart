import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

class SelectPrefectMatch extends StatefulWidget {
  const SelectPrefectMatch({Key? key}) : super(key: key);

  @override
  _SelectPrefectMatchState createState() => _SelectPrefectMatchState();
}

class _SelectPrefectMatchState extends State<SelectPrefectMatch> {

  bool _myfavs = false;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 23,
            backgroundColor: Colors.grey.shade400,
            child: Icon(Icons.clear_rounded,
            color: OnlyYouColor.whiteColor, size: 24,
            ),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                _myfavs = !_myfavs;
              });
            },
            child: CircleAvatar(
              radius: 23,
              backgroundColor: OnlyYouColor.lightRed,
              child:  Icon(Icons.favorite,
                color: _myfavs ? OnlyYouColor.whiteColor : OnlyYouColor.lightBlack, size: 20,
              ),
            ),
          ),
          CircleAvatar(
            radius: 23,
            backgroundColor: OnlyYouColor.lightBlack,
            child: Icon(Icons.arrow_forward_rounded,
              color: OnlyYouColor.whiteColor, size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
