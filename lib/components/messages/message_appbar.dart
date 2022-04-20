import 'package:flutter/material.dart';

PreferredSizeWidget messageAppBar(){
  return AppBar(
    automaticallyImplyLeading: false,
    title: const Text('My Messages'),
    actions: [
      IconButton(
        onPressed: (){},
        icon: const Icon(Icons.search_rounded, size: 20,),
      ),
    ],
  );
}