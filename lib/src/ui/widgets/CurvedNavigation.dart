import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

Widget curvedNavigation() {
  return CurvedNavigationBar(
    index: 1,
    color: Colors.pink[100],
    buttonBackgroundColor: Colors.purple[200],
    height: 52,
    animationDuration: Duration(milliseconds: 380),
    backgroundColor: Colors.pinkAccent[100],
    items: <Widget>[
      Icon(Icons.event_note, size: 30, color: Colors.white),
      Icon(Icons.camera_alt, size: 30, color: Colors.white),
      Icon(Icons.store, size: 30, color: Colors.white),
    ],
    onTap: (index) {
      //Handle button tap
    },
  );
}
