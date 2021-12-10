import 'package:OnlyYou/components/home/user_structure.dart';
import 'package:OnlyYou/models/user.dart';
import 'package:OnlyYou/screens/user_details.dart';
import 'package:flutter/material.dart';

Widget gridUser(constraints, context) {
  return GridView.count(
    crossAxisCount: 2,
    childAspectRatio: 0.8,
    crossAxisSpacing: 15,
    mainAxisSpacing: 15,
    children: List.generate(
      userPerson.length,
      (index) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => UserDetails(userDetails: userPerson[index]),
            ),
          );
        },
        child: userStructure(
          userPerson[index].imageUrl,
          constraints,
          userPerson[index].name,
          userPerson[index].country,
          userPerson[index].age,
        ),
      ),
    ),
  );
}
