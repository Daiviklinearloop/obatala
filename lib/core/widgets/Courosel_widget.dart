import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:obatala/core/utils/math_utils.dart';
import 'package:obatala/theme/app_style.dart';

verticalCourosel() {
  return CarouselSlider.builder(
    disableGesture: true,
    itemCount: 3,
    itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
    Container(color: Colors.blueGrey[50],

      child: Padding(
        padding: const EdgeInsets.only(left:18.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          SizedBox(
              height: 30,
              width: 30,
              child: Image.asset("assets/images/icon-152x152.png")),
          SizedBox(width: 10,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 5,),
              Text("Environmentally friendly",style: AppStyle.textStyleRobotoromanmedium14.copyWith(
                fontSize: getFontSize(
                  16,
                ),),),
              SizedBox(height: 4,),
              Text("less waste less polution",style: AppStyle.textStyleRobotoromanmedium14.copyWith(
                  fontSize: getFontSize(
                    14,
                  ),)),

              SizedBox(height: 5,),

            ],
          )
        ],),
      ),
    ),
        options:CarouselOptions(

      height: 50,
      autoPlay: true,
      aspectRatio: 16 / 9,
      viewportFraction: 1,
      autoPlayCurve: Curves.fastOutSlowIn,
      // enableInfiniteScroll: true,

      autoPlayAnimationDuration: Duration(milliseconds: 800),
      // viewportFraction: 0.8,
      scrollDirection: Axis.vertical,
      scrollPhysics: const NeverScrollableScrollPhysics()
  ),

  );
}
