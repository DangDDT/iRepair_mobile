import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_repair/Controllers/majorController/majorController.dart';
import 'package:i_repair/Models/Constants/constants.dart';
import 'package:i_repair/Models/Major/major.dart';

class GridViewButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MajorController majorController = Get.put(MajorController());
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: majorController.majorList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 16),
      padding: EdgeInsets.only(top: 20, left: 15, right: 15),
      itemBuilder: (BuildContext context, int index) {
        Major major = majorController.majorList[index];
        return GestureDetector(
          onTap: () => {Get.toNamed('/create_booking', arguments: major)},
          child: Card(
            color: Colors.white,
            shape: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(25)),
            elevation: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: ClipRRect(
                    child: Image.network(
                      major.imageUrl,
                      height: 40,
                      width: 40,
                    ),
                  ),
                ),
                Text('${major.name}',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: kTextColor))
              ],
            ),
          ),
        );
      },
    );
  }
}
