import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:dejavu/src/ui/widgets/Badge.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:dejavu/src/ui/widgets/StepperTouch.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DetailProduct extends StatefulWidget {
  @override
  _DetailProductState createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  num _cantidad = 1;
  num _maxLinesDescription = 3;
  IconData iconDescription = FeatherIcons.moreHorizontal;
  bool _verMas = false;

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    final Widget _buttonNotificacions = IconBadge(
        icon: FeatherIcons.shoppingCart,
        color: Colors.pinkAccent[100],
        size: 30,
        number: 2);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.pinkAccent[200],
                size: 30,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            actions: <Widget>[
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(right: 12),
                child: IconButton(
                  icon: _buttonNotificacions,
                  onPressed: () {},
                ),
              )
            ],
            centerTitle: true,
            title: Container(
              padding: EdgeInsets.only(bottom: 5),
              child: Text(
                'Living Room',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          Positioned(
            height: _height / 5,
            width: _width,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(color: Color.fromARGB(255, 42, 42, 42)),
              padding: EdgeInsets.only(right: 20, left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      flex: 4,
                      child: Container(
                        margin: EdgeInsets.only(top: _height / 10, bottom: 10),
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Agregar',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25)),
                              TextSpan(
                                  text: ' Al Carrito!',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.grey)),
                            ],
                          ),
                        ),
                      )),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: _height / 10, bottom: 10),
                      child: FloatingActionButton(
                        backgroundColor: Colors.pinkAccent[200],
                        onPressed: () {},
                        child: Icon(FeatherIcons.chevronRight,
                            color: Colors.white, size: 30),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: _height / 10,
            left: 0,
            right: 0,
            //here the body
            child: Container(
              height: _height - (_height * 0.22),
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Container(
                        height: _height / 3,
                        width: _width / 1.3,
                        margin: EdgeInsets.only(top: 15),
                        child: Swiper(
                          itemBuilder: (BuildContext context, int index) {
                            return ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      'https://image.dhgate.com/0x0/f2/albu/g5/M01/67/C3/rBVaI1jLSL-AViD5AAdD91znoz8264.jpg',
                                  imageBuilder: (context, img) =>
                                      AnimatedOpacity(
                                          opacity: 1.0,
                                          duration: Duration(milliseconds: 500),
                                          child: Container(
                                              decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: img,
                                              fit: BoxFit.fill,
                                            ),
                                          ))),
                                  placeholder: (context, url) => Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(20),
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                Colors.pink[300]),
                                      ),
                                    ),
                                  ),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ));
                          },
                          itemWidth: _width * 0.6,
                          itemCount: 5,
                          pagination: SwiperPagination(),
                          duration: 400,
                          layout: SwiperLayout.CUSTOM,
                          customLayoutOption: CustomLayoutOption(
                                  startIndex: -1, stateCount: 3)
                              .addRotate(
                                  [-70.0 / 180, 0.0, 70.0 / 180]).addTranslate([
                            Offset(-370.0, -40.0),
                            Offset(0.0, 0.0),
                            Offset(370.0, -40.0)
                          ]),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 12),
                      child: Text(
                        "\$550.000",
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Descripción",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 55,
                          width: 118,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: Colors.pinkAccent[100],
                            boxShadow: [
                              BoxShadow(
                                color: Colors.pink[100],
                                offset: Offset(0.0, 10.0),
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: Center(
                            child: StepperTouch(
                              onChanged: (int num) => _cantidad = num,
                              initialValue: _cantidad,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 25, bottom: 5),
                          child: Text(
                            "Sed porttitor lectus nibh. Cras ultricies ligula "
                            "sed magna dictum porta. Praesent sapien massa, "
                            "convallis a pellentesque nec, egestas non nisi. "
                            "Lorem ipsum dolor sit amet, consectetur adipiscing "
                            "elit. Nulla porttitor accumsan tincidunt. "
                            "Curabitur arcu erat, accumsan id imperdiet et, "
                            "porttitor at sem.",
                            style: TextStyle(
                              fontSize: 17.7,
                              color: Colors.black54,
                              fontWeight: FontWeight.w400,
                            ),
                            maxLines: _maxLinesDescription,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                          ),
                        ),
                        IconButton(
                          onPressed: () => {
                            setState(() => {
                                  _verMas = !_verMas,
                                  if (_verMas)
                                    {
                                      _maxLinesDescription = 1000,
                                      iconDescription = FeatherIcons.arrowUp,
                                    }
                                  else
                                    {
                                      iconDescription = FeatherIcons.moreHorizontal,
                                      _maxLinesDescription = 4
                                    }
                                })
                          },
                          icon: Icon(
                            iconDescription,
                            color: _verMas
                                ? (Colors.black54)
                                : (Colors.pinkAccent),
                            size: 42,
                          ),
                          padding: EdgeInsets.only(bottom: 5),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
