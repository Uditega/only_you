import 'package:OnlyYou/screens/theme/only_you_color.dart';
import 'package:flutter/material.dart';

Widget userStructure(imageUrl, constraints,name, country, age){
  return Stack(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Image.asset(imageUrl,
          width: constraints.maxWidth * 0.45,
          height: constraints.maxHeight * 0.3,
          fit: BoxFit.fill,
        ),
      ),
      Positioned(
        right: -3.5,
        bottom: -2,
          child: SizedBox(
            width: constraints.maxWidth * 0.45,
            height: constraints.maxHeight * 0.1,
            child: Card(
              elevation: 0,
              color: Colors.black12,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: constraints.maxWidth*0.32,
                          child: Text('$name',
                            overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: OnlyYouColor.whiteColor, fontSize: 13),
                          ),
                        ),
                        Text('$country',
                          style: TextStyle(color: OnlyYouColor.whiteColor, fontSize: 11),
                        ),
                      ],
                    ),
                    Text('$age',
                      style: TextStyle(color: OnlyYouColor.whiteColor),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ),
    ],
  );
}
