import 'package:flutter/material.dart';

PreferredSizeWidget notificationAppBar(){
  return AppBar(
    automaticallyImplyLeading: false,
    title: const Text('Notifications'),
    actions: [
      IconButton(
        onPressed: (){},
        icon: const Icon(Icons.search_rounded, size: 20,),
      ),
    ],
  );
}