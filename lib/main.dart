import 'package:flutter/material.dart';

import 'package:dejavu/src/routes/routes.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.pinkAccent[100],
          brightness: Brightness.light,
          accentColor: Colors.pinkAccent[100]),
      title: 'Deja Vu Shop',
      initialRoute: '/',
      routes: Routes(context: context).routes(),
    );
  }
}
