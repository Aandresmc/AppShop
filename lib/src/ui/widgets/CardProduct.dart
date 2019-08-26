import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String dateAdded;
  final String category;
  final String description;
  final String image;
  final String location;

  ProductCard(
      {this.title,
      this.price,
      this.dateAdded,
      this.category,
      this.description,
      this.image,
      this.location});

  @override
  Widget build(BuildContext context) {

    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;
    final symbol = MoneyFormatterSettings().symbol;
    final precio = FlutterMoneyFormatter(amount: price).output.withoutFractionDigits;
    String value = '$symbol $precio';

    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: _height / 45),
                ),
                Container(
                  width: _width / 2.3,
                  padding: EdgeInsets.only(top: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          value,
                          style: TextStyle(
                            fontSize: 16.5,
                          ),
                        ),
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[100],
                        child: Container(
                          margin: EdgeInsets.all(8),
                          color: Colors.transparent,
                          child: Text(
                            category,
                            softWrap: true,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Container(
                      margin: EdgeInsets.only(top: 10),
                      width: _width / 2.5,
                      child: Text(
                        description,
                        style: TextStyle(
                          fontSize: _height / 62,
                        ),
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                      )),
                ),
              ],
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              width: _width / 2.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      image,
                      height: _height / 6.7,
                      width: _width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: -10.0,
                    bottom: 3.0,
                    child: RawMaterialButton(
                      onPressed: () {},
                      fillColor: Colors.white,
                      shape: CircleBorder(),
                      elevation: 1,
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.pinkAccent[200],
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
