import 'package:flutter/material.dart';

import 'package:dejavu/src/routes/routes.dart';
<<<<<<< HEAD
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
=======
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.pinkAccent[100],brightness: Brightness.light,accentColor:  Colors.pinkAccent[100]),
>>>>>>> 26e7e5a617befa52ee211bafa5872d22a7998505
      title: 'Deja Vu Shop',
      initialRoute: '/',
      routes: Routes(context: context).routes(),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> 26e7e5a617befa52ee211bafa5872d22a7998505
