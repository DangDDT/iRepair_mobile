import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  final int number;
  final String unit;
  final String icon;
  final Color color;
  const IconCard({
    Key? key,
    required this.number,
    required this.unit,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 200,
        height: 50,
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: color,
          elevation: 7,
          shadowColor: Colors.grey,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), side: BorderSide.none),
          child: Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(right: 10),
              child: Text(
                '$number ' + '$unit',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
        ),
      ),
      Positioned(top: 5, left: 10, child: Image.asset(icon)),
    ]);
  }
}