import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

Widget userUploads(){

  List<String> uploads = [
    'images/fifthGuy.jpg',
    'images/secondGuy.jpg',
    'images/fourthGuy.jpg',
    'images/thirdGuy.jpg',
  ];

  return StaggeredGridView.countBuilder(
    crossAxisCount: 2,
    crossAxisSpacing: 10,
    mainAxisSpacing: 12,
    itemCount: uploads.length,
    itemBuilder: (context, index) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(uploads[index]),
            fit: BoxFit.fill,
          ),
        ),
      );
    },
    staggeredTileBuilder: (index) =>
        StaggeredTile.count(1, index.isEven ? 1.5 : 1.1),
  );
}