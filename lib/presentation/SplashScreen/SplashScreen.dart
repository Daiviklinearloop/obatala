import 'package:get/get.dart';
import 'package:obatala/core/utils/color_constant.dart';
import 'package:obatala/presentation/SplashScreen/controller/splashController.dart';
import '../../core/utils/math_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen1Screen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SafeArea(
          child: Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(color: ColorConstant.whiteA700),
              child:
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.only(
                          left: getHorizontalSize(40.00),
                          top: getVerticalSize(40.00),
                          right: getHorizontalSize(40.00),
                          bottom: getVerticalSize(40.00)),
                      child: SvgPicture.asset("assets/images/logoobatalacoffee.svg",height: 30,width: 100,),
                  ))
          ),
        ));
  }


}
