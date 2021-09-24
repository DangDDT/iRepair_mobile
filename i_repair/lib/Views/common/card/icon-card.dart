import 'package:flutter/material.dart';
import 'package:i_repair/Models/Constants/constants.dart';

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
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      Container(
        width: size.width * 0.45,
        margin: EdgeInsets.all(5),
        height: 50,
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: kPrimaryLightColor,
          elevation: 7,
          shadowColor: Colors.grey,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(color: kTextColor, width: 2)),
          child: Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(right: 10),
              child: Text(
                '$number ' + '$unit',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
        ),
      ),
      Positioned(top: 5, left: 10, child: Image.asset(icon)),
    ]);
  }
}
