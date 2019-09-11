import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';

Widget navigationDrawer(BuildContext context) {
  double _height = MediaQuery.of(context).size.height;

  return Drawer(
    child: Column(
      children: <Widget>[
        Opacity(
          opacity: 0.8,
          child: Container(
            padding: EdgeInsets.only(top: _height / 20, bottom: _height / 50),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.pinkAccent,Colors.pink[300]],
              ),
            ),
            child: ListTile(
              onTap: () {},
              leading: CircleAvatar(
                child: Icon(
                  FeatherIcons.user,
                  size: 40,
                  color: Colors.pink,
                ),
                radius: 30,
                backgroundColor: Colors.white,
              ),
              title: Text("Andres Mora Castro",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.white)),
              subtitle: Text(
                "3225397909",
                style: TextStyle(fontSize: 15, color: Colors.white70),
              ),
              trailing: Icon(
                FeatherIcons.chevronRight,
                color: Colors.white54,
                size: 30,
              ),
            ),
          ),
        ),
        Column(
          children: <Widget>[
            ListTile(
              onTap: () {},
              leading: Icon(
                FeatherIcons.creditCard,
                color: Colors.lightBlueAccent,
              ),
              title: Text("Ordenes & Pagos"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(FeatherIcons.heart, color: Colors.redAccent),
              title: Text("Productos Favoritos"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                FeatherIcons.shoppingCart,
                color: Colors.amberAccent,
              ),
              title: Text("Carrito Compras"),
            ),
          ],
        ),
        Expanded(
          flex: 5,
          child: Container(),
        ),
        ListTile(
          title: Text(
            "Cerrar Sesión",
            style: TextStyle(fontSize: 16),
          ),
          leading: Icon(
            FeatherIcons.logOut,
            color: Colors.blueGrey,
            size: _height / 29,
          ),
          onTap: () {},
        ),
      ],
    ),
  );
}
