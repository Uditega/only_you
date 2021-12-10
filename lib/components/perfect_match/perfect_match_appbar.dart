import 'package:flutter/material.dart';

PreferredSizeWidget perfectMatchAppBar(){
  return AppBar(
    automaticallyImplyLeading: false,
    title: const Text('Matches'),
    actions: [
      IconButton(
          onPressed: (){},
          icon: const Icon(Icons.more_vert, size: 20,),
      ),
    ],
  );
}