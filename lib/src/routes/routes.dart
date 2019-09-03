<<<<<<< HEAD
import 'package:dejavu/src/ui/pages/DetailPage.dart';
=======
>>>>>>> 26e7e5a617befa52ee211bafa5872d22a7998505
import 'package:flutter/material.dart';

import 'package:dejavu/src/ui/pages/HomePage.dart';

class Routes {
  BuildContext context;

  Routes({@required this.context});

  routes() => {
        '/': (BuildContext context) => HomePage(),
<<<<<<< HEAD
        'detail': (BuildContext context) => DetailProduct(),
=======
>>>>>>> 26e7e5a617befa52ee211bafa5872d22a7998505
      };
}
