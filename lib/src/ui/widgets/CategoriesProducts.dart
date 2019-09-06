import 'package:flutter/material.dart';

class CategoriesProducts extends StatefulWidget {
  bool _isExpanded = false;
  _CategoriesProductsState createState() => _CategoriesProductsState();
}


class _CategoriesProductsState extends State<CategoriesProducts> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Container(
      child: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Categorias', style: TextStyle(fontSize: 16)),
              GestureDetector(
                  onTap: () {
                    setState(() => widget._isExpanded = !widget._isExpanded);
                  },
                  child: Text(
                    widget._isExpanded ? "Ocultar" : "Ver Todos",
                    style: TextStyle(
                      color: Colors.purple[300],
                    ),
                  )),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: AnimatedCrossFade(
            
            firstChild: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 4,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        //Navigator.of(context).pushNamed(ELECTRONICS_ITEM_LIST);
                        print('Routing to Electronics item list');
                      },
                      child: Image.asset(
                        'assets/images/gadget.png',
                        height: _height / 12,
                        width: _width / 12,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Flexible(
                      child: Text(
                        "Electronics",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          //Navigator.of(context).pushNamed(PROPERTIES_ITEM_LIST);
                          print('Routing to Properties item list');
                        },
                        child: Image.asset(
                          'assets/images/house.png',
                          height: _height / 12,
                          width: _width / 12,
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Flexible(
                      child: Text(
                        "Properties",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          //Navigator.of(context).pushNamed(JOBS_ITEM_LIST);
                          print('Routing to Jobs item list');
                        },
                        child: Image.asset(
                          'assets/images/job.png',
                          height: _height / 12,
                          width: _width / 12,
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Flexible(
                      child: Text(
                        "Jobs",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          //Navigator.of(context).pushNamed(FURNITURE_ITEM_LIST);
                          print('Routing to Furniture item list');
                        },
                        child: Image.asset(
                          'assets/images/sofa.png',
                          height: _height / 12,
                          width: _width / 12,
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Flexible(
                      child: Text(
                        "Furniture",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            secondChild: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 4,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        //Navigator.of(context).pushNamed(ELECTRONICS_ITEM_LIST);
                        print('Routing to Electronics item list');
                      },
                      child: Image.asset(
                        'assets/images/gadget.png',
                        height: _height / 12,
                        width: _width / 12,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Flexible(
                      child: Text(
                        "Electronics",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          //Navigator.of(context).pushNamed(PROPERTIES_ITEM_LIST);
                          print('Routing to Properties item list');
                        },
                        child: Image.asset(
                          'assets/images/house.png',
                          height: _height / 12,
                          width: _width / 12,
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Flexible(
                      child: Text(
                        "Properties",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          //Navigator.of(context).pushNamed(JOBS_ITEM_LIST);
                          print('Routing to Jobs item list');
                        },
                        child: Image.asset(
                          'assets/images/job.png',
                          height: _height / 12,
                          width: _width / 12,
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Flexible(
                      child: Text(
                        "Jobs",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          //Navigator.of(context).pushNamed(FURNITURE_ITEM_LIST);
                          print('Routing to Furniture item list');
                        },
                        child: Image.asset(
                          'assets/images/sofa.png',
                          height: _height / 12,
                          width: _width / 12,
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Flexible(
                      child: Text(
                        "Furniture",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        //Navigator.of(context).pushNamed(CARS_ITEM_LIST);
                        print('Routing to Cars item list');
                      },
                      child: Image.asset(
                        'assets/images/car.png',
                        height: _height / 12,
                        width: _width / 12,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Flexible(
                      child: Text(
                        "Cars",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        //Navigator.of(context).pushNamed(BIKES_ITEM_LIST);
                        print('Routing to Bikes item list');
                      },
                      child: Image.asset(
                        'assets/images/bike.png',
                        height: _height / 12,
                        width: _width / 12,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Flexible(
                      child: Text(
                        "Bikes",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          //Navigator.of(context).pushNamed(MOBILES_ITEM_LIST);
                          print('Routing to Mobiles item list');
                        },
                        child: Image.asset(
                          'assets/images/smartphone.png',
                          height: _height / 12,
                          width: _width / 12,
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Flexible(
                      child: Text(
                        "Mobiles",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        //Navigator.of(context).pushNamed(PETS_ITEM_LIST);
                        print('Routing to Pets item list');
                      },
                      child: Image.asset(
                        'assets/images/pet.png',
                        height: _height / 12,
                        width: _width / 12,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Flexible(
                      child: Text(
                        "Pets",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        //Navigator.of(context).pushNamed(FASHION_ITEM_LIST);
                        print('Routing to Fashion item list');
                      },
                      child: Image.asset(
                        'assets/images/dress.png',
                        height: _height / 12,
                        width: _width / 12,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Flexible(
                      child: Text(
                        "Fashion",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            crossFadeState: widget._isExpanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            duration: Duration(milliseconds: 350),
          ),
        )
      ]),
    );
  }
}
