import 'package:dejavu/src/ui/pages/DetailPage.dart';
import 'package:dejavu/src/ui/pages/ListProductsPage.dart';
import 'package:flutter/material.dart';

import 'package:dejavu/src/ui/pages/HomePage.dart';

class Routes {
  BuildContext context;

  Routes({@required this.context});

  routes() => {
        '/': (BuildContext context) => HomePage(),
        'detail': (BuildContext context) => DetailProduct(),
        'products': (BuildContext context) => ListProducts(),
      };
}
