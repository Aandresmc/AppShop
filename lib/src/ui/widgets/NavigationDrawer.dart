import 'package:flutter/material.dart';

Widget navigationDrawer(BuildContext context) {
  final Color rose = Color.fromRGBO(250, 138, 138, 1);
  double _height = MediaQuery.of(context).size.height;

  return Drawer(
    child: Column(
      children: <Widget>[
        Opacity(
          opacity: 0.75,
          child: Container(
            height: _height / 6,
            padding: EdgeInsets.only(top: _height / 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [rose, Colors.pinkAccent],
              ),
            ),
            child: ListTile(
              onTap: () {},
              leading: CircleAvatar(
                child: Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.black,
                ),
                radius: 30,
                backgroundColor: Colors.white,
              ),
              title: Text("Andres Mora Castro",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.white70)),
              subtitle: Text(
                "3225397909",
                style: TextStyle(fontSize: 13, color: Colors.white70),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white54,
              ),
            ),
          ),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.payment,
            color: Colors.lightBlueAccent,
          ),
          title: Text("Ordenes & Pagos"),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(Icons.favorite, color: Colors.redAccent),
          title: Text("Productos Favoritos"),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.shopping_cart,
            color: Colors.amberAccent,
          ),
          title: Text("Carrito Compras"),
        )
      ],
    ),
  );
}
