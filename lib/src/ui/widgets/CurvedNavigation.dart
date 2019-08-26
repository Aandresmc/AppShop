import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

Widget curvedNavigation() {
  return CurvedNavigationBar(
    height: 60,
    animationDuration: Duration(milliseconds: 380),
    backgroundColor: Colors.pink[100],
    items: <Widget>[
      Icon(Icons.event_note, size: 32),
      Icon(Icons.camera_alt, size: 32),
      Icon(Icons.store_mall_directory, size: 32),
    ],
    onTap: (index) {
      //Handle button tap
    },
  );
}
