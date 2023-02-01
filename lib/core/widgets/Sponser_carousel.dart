import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

SponcerCarousel(List manufacture) {
  return CarouselSlider(
    items: manufacture
        .map(
          (item) =>  Container(
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
          ),
            child:item.contains(".svg") ? SvgPicture.network(item):
            Image.network(item),
        )
    ).toList(),
    options: CarouselOptions(
      height: 100.0,
      enlargeCenterPage: true,
      autoPlay: true,
      aspectRatio: 16 / 9,
      autoPlayCurve: Curves.linear,
      // enableInfiniteScroll: true,
      // autoPlayInterval:  Duration(seconds: 0),
      autoPlayAnimationDuration:  Duration(milliseconds: 5000),
      // viewportFraction: 0.8,
      scrollDirection: Axis.horizontal
    ),
  );

}
