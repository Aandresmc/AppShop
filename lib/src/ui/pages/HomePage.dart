import 'package:flutter/material.dart';
import 'package:dejavu/src/utils/fake_data.dart';
import 'package:dejavu/src/models/productModel.dart';
import 'package:dejavu/src/ui/widgets/AppBar.dart';
import 'package:dejavu/src/ui/widgets/CardProduct.dart';
import 'package:dejavu/src/ui/widgets/CategoriesProducts.dart';
import 'package:dejavu/src/ui/widgets/CurvedNavigation.dart';
import 'package:dejavu/src/ui/widgets/NavigationDrawer.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  double _height;
  double _width;

  @override
  Widget build(BuildContext context) {

    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: curvedNavigation(),
      key: scaffoldKey,
      drawer: navigationDrawer(context),
      body: Container(
        height: _height,
        width: _width,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              appbarGradient(context, scaffoldKey),
              CategoriesProducts(),
              Divider(),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Productos", style: TextStyle(fontSize: 16)),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('products');
                        },
                        child: Text(
                          'Ver Todos',
                          style: TextStyle(
                            color: Colors.purple[300],
                          ),
                        ))
                  ],
                ),
              ),
              products()
            ],
          ),
        ),
      ),
    );
  }

  Widget products() {
    return Container(
      height: _height / 4,
      margin: EdgeInsets.only(bottom: 20, left: 10),
      child: ListView.builder(
        padding: EdgeInsets.all(5),
        shrinkWrap: true,
        itemCount: productsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return _buildproductsEntries(context, index, productsList);
        },
      ),
    );
  }

  Widget _buildproductsEntries(
      BuildContext context, int index, List<Product> listItem) {
    return GestureDetector(
      onTap: () {
        //Navigator.of(context).pushNamed(DETAIL_UI);
        print("Routing to detail page");
      },
      child: ProductCard(
        title: '${listItem[index].title}',
        category: '${listItem[index].category}',
        price: listItem[index].price.toDouble(),
        dateAdded: "${listItem[index].dateAdded}",
        description: "${listItem[index].desc}",
        image: "${listItem[index].image}",
        location: "Sector 62, Noida",
      ),
    );
  }
}
