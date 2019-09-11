import 'package:cached_network_image/cached_network_image.dart';
import 'package:dejavu/src/models/productModel.dart';
import 'package:dejavu/src/utils/fake_data.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ListProducts extends StatefulWidget {
  ListProducts({Key key}) : super(key: key);
  _ListProductsState createState() => _ListProductsState();
}

class _ListProductsState extends State<ListProducts> {
  double _height;
  double _width;
  bool _verSearch = true;
  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    int cont = 0;

    final double itemHeight = (_height - kToolbarHeight - 24) / 2;
    final double itemWidth = _width / 2;
    return Scaffold(
      body: Stack(children: <Widget>[
        NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
             _verSearch= !innerBoxIsScrolled; 
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                brightness: Brightness.dark,
                expandedHeight: _height / 2.6,
                leading: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Center(
                    child: RawMaterialButton(
                      onPressed: () => Navigator.pop(context),
                      fillColor: Colors.white,
                      splashColor: Colors.pink[50],
                      hoverElevation: 4,
                      shape: CircleBorder(),
                      elevation: 4,
                      child: Icon(
                        FeatherIcons.arrowLeft,
                        color: Colors.pinkAccent,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                floating: false,
                pinned: true,
                actions: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Center(
                      child: RawMaterialButton(
                        onPressed: () {},
                        fillColor: Colors.white,
                        splashColor: Colors.pink[50],
                        hoverElevation: 4,
                        shape: CircleBorder(),
                        elevation: 4,
                        child: Icon(
                          FeatherIcons.filter,
                          color: Colors.pinkAccent,
                          size: 20,
                        ),
                      ),
                    ),
                  )
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(60)),
                          child: Image.asset(
                            'assets/images/sliveAppbar/bg_slive.jpg',
                          )),
                      Image.asset('assets/images/sliveAppbar/eyes_slive.png'),
                      Positioned(
                        top: 30,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(boxShadow: <BoxShadow>[
                            BoxShadow(
                              // offset: Offset(4, 4),
                              blurRadius: 60,
                              color: Colors.pink[300],
                            ),
                          ]),
                          child: _title("Deja vu"),
                        ),
                      ),
                      Positioned(
                        bottom: 40,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(boxShadow: <BoxShadow>[
                            BoxShadow(
                              // offset: Offset(4, 4),
                              blurRadius: 30,
                              color: Colors.pink[200],
                            ),
                          ]),
                          child: Text("Ve tu propia belleza",
                              style: TextStyle(
                                shadows: <Shadow>[
                                  Shadow(
                                    // offset: Offset(4, 4),
                                    blurRadius: 35,
                                    color: Color.fromARGB(200, 0, 0, 255),
                                  ),
                                  Shadow(
                                    offset: Offset(2, 2),
                                    blurRadius: 8.0,
                                    color: Color.fromARGB(125, 0, 0, 255),
                                  )
                                ],
                                fontFamily: 'Allura',
                                color: Colors.white,
                                fontSize: 40,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Stack(
            children: <Widget>[
              AnimatedContainer(
                color: Colors.white,
                margin: EdgeInsets.only(top: 50),
                duration: Duration(microseconds: 400),
                curve: Curves.bounceIn,
                height: _height,
                child: GridView.count(
                  childAspectRatio: (itemWidth / itemHeight),
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                  scrollDirection: Axis.vertical,
                  children: List.generate(productsList.length,
                      (index) => _buildProduct(context, index, productsList)),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: Container(
                            color: Colors.white,
                            child: Text(
                              'Productos',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 38,
                                  fontFamily: 'Allura',
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: _height / 2.65,
          child: _searchProducts(),
        )
      ]),
    );
  }

  Widget _buildProduct(
      BuildContext context, int index, List<Product> listItem) {
    final Color rose = Color.fromRGBO(255, 128, 158, 1);

    return GestureDetector(
      onTap: () {
        //Navigator.of(context).pushNamed(DETAIL_UI);
        print("Routing to detail page");
      },
      child: Card(
        color: rose,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: <Widget>[
            CachedNetworkImage(
              imageUrl:
                  'https://image.dhgate.com/0x0/f2/albu/g5/M01/67/C3/rBVaI1jLSL-AViD5AAdD91znoz8264.jpg',
              imageBuilder: (context, img) => Container(
                  margin: EdgeInsets.only(top: 50),
                  height: _height * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(15, 20),
                        topRight: Radius.elliptical(15, 20)),
                    image: DecorationImage(
                      image: img,
                      fit: BoxFit.fill,
                    ),
                  )),
              placeholder: (context, url) => Center(
                  child: Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 15, 10, 10),
                          child: Text('${listItem[index].category}',
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 20,
                                letterSpacing: 2,
                              )),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            Positioned(
              bottom: 0,
              width: _width * 0.47,
              height: _height * 0.07,
              child: MaterialButton(
                onPressed: () {},
                color: Colors.deepPurpleAccent[100],
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                highlightElevation: 2,
                child: Text(
                  'ver más',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _searchProducts() {
    return Visibility(
      visible: _verSearch,
      child: Row(children: <Widget>[
        Container(
          alignment: Alignment.center,
          height: 50,
          width: _width,
          child: Material(
            animationDuration: Duration(microseconds: 350),
            borderRadius: BorderRadius.circular(30.0),
            elevation: 2.5,
            child: Container(
              width: _width * 0.9,
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
        ),
      ]),
    );
  }

  Widget _title(String title) {
    return Text(title,
        style: TextStyle(
          shadows: <Shadow>[
            Shadow(
              // offset: Offset(4, 4),
              blurRadius: 35,
              color: Color.fromARGB(200, 0, 0, 255),
            ),
            Shadow(
              offset: Offset(2, 2),
              blurRadius: 8.0,
              color: Color.fromARGB(125, 0, 0, 255),
            )
          ],
          fontFamily: 'Allura',
          color: Colors.white,
          fontSize: 35,
        ));
  }
}

// title: '${listItem[index].title}',
//       category: '${listItem[index].category}',
//       price: listItem[index].price.toDouble(),
//       dateAdded: "${listItem[index].dateAdded}",
//       description: "${listItem[index].desc}",
//       image: "${listItem[index].image}",
//       location: "Sector 62, Noida",
