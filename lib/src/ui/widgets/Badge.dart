import 'package:flutter/material.dart';

class IconBadge extends StatefulWidget {
<<<<<<< HEAD
  final IconData icon;
  final Color color;
  final num number;
  final double size;

  IconBadge(
      {Key key,
      @required this.icon,
      this.color,
      this.size,
      @required this.number})
      : super(key: key);
=======

  final IconData icon;
  final num number;

  IconBadge({Key key, @required this.icon, @required this.number}): super(key: key);
>>>>>>> 26e7e5a617befa52ee211bafa5872d22a7998505

  @override
  _IconBadgeState createState() => _IconBadgeState();
}

class _IconBadgeState extends State<IconBadge> {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
=======
    
>>>>>>> 26e7e5a617befa52ee211bafa5872d22a7998505
    double _height = MediaQuery.of(context).size.height;

    return Stack(
      children: <Widget>[
        Opacity(
            opacity: 0.75,
            child: GestureDetector(
                onTap: () {},
                child: Icon(
                  widget.icon,
<<<<<<< HEAD
                  color: widget.color ?? Colors.white,
                  size: widget.size ?? (_height / 30),
=======
                  color: Colors.white,
                  size: _height / 30,
>>>>>>> 26e7e5a617befa52ee211bafa5872d22a7998505
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
