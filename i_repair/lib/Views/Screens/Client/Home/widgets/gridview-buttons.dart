import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_repair/Models/Constants/constants.dart';

class GridViewButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 16, mainAxisSpacing: 16),
      padding: EdgeInsets.only(top: 20, left: 15, right: 15),
      children: [
        GestureDetector(
          onTap: () => {Get.toNamed('/create_booking')},
          child: Card(
            color: kSecondaryLightColor,
            shape: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(25)),
            elevation: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.add_circled,
                  size: 50,
                  color: kBackgroundColor,
                ),
                Text('TÌM THỢ',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: kBackgroundColor))
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () => {Navigator.pushNamed(context, '/my_booking')},
          child: Card(
            shape: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(25)),
            elevation: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.bookmark,
                  size: 50,
                  color: kSecondaryColor,
                ),
                Text('ĐƠN HÀNG',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () => {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('PHẢN HỒI'),
                    content:
                        Text('Chức năng này đang phát triển, vui lòng đợi !!!'),
                    actions: <Widget>[
                      TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text('Đóng')),
                    ],
                  );
                })
          },
          child: Card(
            shape: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(25)),
            elevation: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.chat_bubble,
                  size: 50,
                  color: kSecondaryColor,
                ),
                Text('PHẢN HỒI',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
