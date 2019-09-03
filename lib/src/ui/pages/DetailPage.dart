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

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    final Widget _buttonNotificacions = IconBadge(
        icon: Icons.notifications,
        color: Colors.pinkAccent[100],
        size: 30,
        number: 2);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.pinkAccent[200],
                size: 30,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            elevation: 0,
            actions: <Widget>[
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(right: 12),
                child: IconButton(icon: _buttonNotificacions),
              )
            ],
          ),
          Positioned(
              top: 70,
              left: 0,
              bottom: 0,
              right: 0,
              //here the body
              child: Container(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: _height / 3.2,
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
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          'Living Room',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text(
                          "\$550.00",
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Text(
                              "Description",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Container(
                                  height: 50,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.pink[100],
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
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25, bottom: _height / 5),
                        child: Text(
                          "Sed porttitor lectus nibh. Cras ultricies ligula "
                          "sed magna dictum porta. Praesent sapien massa, "
                          "convallis a pellentesque nec, egestas non nisi. "
                          "Lorem ipsum dolor sit amet, consectetur adipiscing "
                          "elit. Nulla porttitor accumsan tincidunt. "
                          "Curabitur arcu erat, accumsan id imperdiet et, "
                          "porttitor at sem.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          Positioned(
            height: _height / 7.5,
            width: _width,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(50),
                  topRight: const Radius.circular(50),
                ),
              ),
              padding: EdgeInsets.only(right: 20, left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      flex: 4,
                      child: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Agregar',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25)),
                            TextSpan(
                                text: ' Al Carrito!',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.grey)),
                          ],
                        ),
                      )),
                  Expanded(
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.navigate_next,
                          color: Colors.white, size: 38),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
