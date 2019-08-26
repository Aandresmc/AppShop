import 'package:flutter/material.dart';

class IconBadge extends StatefulWidget {

  final IconData icon;
  final num number;

  IconBadge({Key key, @required this.icon, @required this.number}): super(key: key);

  @override
  _IconBadgeState createState() => _IconBadgeState();
}

class _IconBadgeState extends State<IconBadge> {
  @override
  Widget build(BuildContext context) {
    
    double _height = MediaQuery.of(context).size.height;

    return Stack(
      children: <Widget>[
        Opacity(
            opacity: 0.75,
            child: GestureDetector(
                onTap: () {},
                child: Icon(
                  widget.icon,
                  color: Colors.white,
                  size: _height / 30,
                ))),
        Positioned(
          right: 0.0,
          child: Container(
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: Colors.pinkAccent[200],
              borderRadius: BorderRadius.circular(6),
            ),
            constraints: BoxConstraints(
              minWidth: 13,
              minHeight: 13,
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 1),
              child: Text(
                widget.number.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
