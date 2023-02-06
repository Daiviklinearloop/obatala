import 'package:flutter/material.dart';
import 'package:obatala/core/utils/math_utils.dart';
import 'package:obatala/theme/app_style.dart';

CatergoryCard(String image, String name){
  return Container(
    height: 130,
    width: 150,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(4)),
        border: Border.all(color: Colors.grey)
    ),
    child:Column(children: [
      const SizedBox(height: 20,),
      Container(
        height: 70,
        width: 70,
        child: Image.asset("$image"),
      ),
      const SizedBox(height: 10,),
      Text("$name",style: AppStyle.textStyleRobotoromanmedium14.copyWith(
          fontSize: getFontSize(
            14,
          )))
    ],)
  );
}