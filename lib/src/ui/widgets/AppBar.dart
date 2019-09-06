import 'package:dejavu/src/ui/widgets/Badge.dart';
import 'package:dejavu/src/ui/widgets/CustomShape.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';

Widget appbarGradient(
    BuildContext context, GlobalKey<ScaffoldState> scaffoldKey) {
  double _height = MediaQuery.of(context).size.height;

  final Color rose = Color.fromRGBO(250, 138, 138, 1);

  final Widget _ubicacion = Flexible(
    child: Container(
      height: _height / 20,
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        color: Colors.black12,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              print('Editing location');
            },
            child: Icon(
             FeatherIcons.mapPin,
              color: Colors.white,
              size: _height / 40,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
              child: Text('Deja vu ',
                  style: TextStyle(color: Colors.white, fontSize: _height / 50),
                  // overflow: TextOverflow.fade,
                  softWrap: false)),
        ],
      ),
    ),
  );

  final Widget _buttonNotificacions =
      IconBadge(icon: FeatherIcons.shoppingCart, number: 2);

  final Widget _buttonNavigationDrawer = Opacity(
    opacity: 0.75,
    child: Container(
        child: GestureDetector(
            onTap: () {
              scaffoldKey.currentState.openDrawer();
            },
            child: Icon(FeatherIcons.settings,
                size: _height / 35, color: Colors.white,)) // child: Image.asset(
        //   'assets/images/menubutton.png',
        //   height: _height / 40,
        // )),
        ),
  );

  final Widget _searchProducts = Container(
    margin: EdgeInsets.only(left: 40, right: 40, top: _height / 3.75),
    child: Material(
      animationDuration: Duration(microseconds: 350),
      borderRadius: BorderRadius.circular(30.0),
      elevation: 2.5,
      child: Container(
        child: TextFormField(
          cursorColor: Colors.white,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            prefixIcon: Icon(Icons.search, color: Colors.pink, size: 30),
            hintText: "¿Qué estás buscando?",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide.none),
          ),
        ),
      ),
    ),
  );

  return Stack(
    children: <Widget>[
      Opacity(
        opacity: 0.75,
        child: ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: _height / 3,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.pink, rose],
              ),
            ),
          ),
        ),
      ),
      Opacity(
        opacity: 0.5,
        child: ClipPath(
          clipper: CustomShapeClipper2(),
          child: Container(
            height: _height / 3.5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [rose, Colors.pinkAccent],
              ),
            ),
          ),
        ),
      ),
      Opacity(
        opacity: 0.25,
        child: ClipPath(
          clipper: CustomShapeClipper3(),
          child: Container(
            height: _height / 3,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.pink,Colors.pink],
              ),
            ),
          ),
        ),
      ),
      _searchProducts,
      SafeArea(
          top: true,
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: _height / 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _buttonNavigationDrawer,
                _ubicacion,
                _buttonNotificacions,
              ],
            ),
          )),
    ],
  );
}
