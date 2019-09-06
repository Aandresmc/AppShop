import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

Widget curvedNavigation() {
  return CurvedNavigationBar(
    index: 1,
    color: Colors.grey[200],
    buttonBackgroundColor: Colors.transparent,
    height: 52,
    animationDuration: Duration(milliseconds: 380),
    backgroundColor: Colors.transparent,
    items: <Widget>[
      Icon(FeatherIcons.users, size: 28, color: Colors.pinkAccent[200]),
      Icon(FeatherIcons.camera, size: 28, color:  Colors.pinkAccent[200]),
      Icon(FeatherIcons.shoppingBag, size: 28, color:  Colors.pinkAccent[200]),
    ],
    onTap: (index) {
      //Handle button tap
    },
  );
}
