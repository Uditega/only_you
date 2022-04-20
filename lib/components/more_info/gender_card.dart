import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

class GenderCard extends StatefulWidget {
  const GenderCard({Key? key}) : super(key: key);

  @override
  _GenderCardState createState() => _GenderCardState();
}

class _GenderCardState extends State<GenderCard> {

  List<Map<String, dynamic>> genderOption = [
    {'name': 'Men', 'isClicked': false},
    {'name': 'Women', 'isClicked': false},
    {'name': 'Both', 'isClicked': false}
    ];

  void selectGender(int index){
    setState(() {
      for(int i=0; i<genderOption.length; i++){
        if(i == index){
          genderOption[index]['isClicked'] = !genderOption[index]['isClicked'];
        }
        if(i != index){
          genderOption[index]['isClicked'] = false;
        }
      }
    });
  }
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
            selectGender(index);
          },
          child: Card(
            elevation: 0,
            color: genderOption[index]['isClicked'] ? OnlyYouColor.lightRed : OnlyYouColor.boxLightGrey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25)
            ),
            child: Center(
              child: Text( genderOption[index]['name'],
                style: TextStyle(
                  color: genderOption[index]['isClicked'] ? OnlyYouColor.whiteColor : OnlyYouColor.lightBlack,
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
