import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

class GenderCard extends StatefulWidget {
  const GenderCard({Key? key}) : super(key: key);

  @override
  _GenderCardState createState() => _GenderCardState();
}

class _GenderCardState extends State<GenderCard> {
  bool _isSelected = false;

  List<String> genderOption = ['Men', 'Women', 'Both'];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 2.3,
      mainAxisSpacing: 5.0,
      children: List.generate(
        genderOption.length,
        (index) => GestureDetector(
          onTap: (){
            setState(() {
              _isSelected = !_isSelected;
            });
          },
          child: Card(
            elevation: 0,
            color: _isSelected? OnlyYouColor.lightRed : OnlyYouColor.boxLightGrey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25)
            ),
            child: Center(
              child: Text( genderOption[index],
                style: TextStyle(
                  color: _isSelected? OnlyYouColor.whiteColor : OnlyYouColor.lightBlack,
                  fontSize: 12
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
