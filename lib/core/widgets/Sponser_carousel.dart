import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:obatala/core/utils/math_utils.dart';
// import 'package:obatala/theme/app_style.dart';

SponcerCarousel(List manufacture) {
  return CarouselSlider(
    items: manufacture
        .map(
          (item) =>  Container(
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            
            // image: DecorationImage(
            //   image: NetworkImage(item,
            //   headers:
            //   ),
            //   fit: BoxFit.cover,
            //
            // ),
          ),
            child:item.contains(".svg")? SvgPicture.network(item):
            Image.network(item),
        )
    ).toList(),
    // [
    //    Container(
    //       margin: EdgeInsets.all(8.0),
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(10.0),
    //         image: DecorationImage(
    //           image: NetworkImage(manufacture[0]),
    //           fit: BoxFit.cover,
    //         ),
    //       ),
    //     )
    //
    //   // Container(
    //   //   margin: EdgeInsets.all(8.0),
    //   //   decoration: BoxDecoration(
    //   //     borderRadius: BorderRadius.circular(10.0),
    //   //     image: DecorationImage(
    //   //       image: NetworkImage('https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    //   //       ),
    //   //       fit: BoxFit.cover,
    //   //     ),
    //   //   ),
    //   // ),
    //   //
    //   // Container(
    //   //   margin: EdgeInsets.all(8.0),
    //   //   decoration: BoxDecoration(
    //   //     borderRadius: BorderRadius.circular(10.0),
    //   //     image: DecorationImage(
    //   //       image: NetworkImage('https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    //   //       ),
    //   //       fit: BoxFit.cover,
    //   //     ),
    //   //   ),
    //   // ),
    //
    // ],
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


    // CarouselSlider.builder(
    //   itemCount: 10,
    //   itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
    //       Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: Container(color: Colors.green,
    //          height: 50,
    //           width: 50,
    //         ),
    //       ),
    //   options:CarouselOptions(
    //       height: 50,
    //       autoPlay: true,
    //       aspectRatio: 16 / 9,
    //       // autoPlayCurve: Curves.,
    //       enableInfiniteScroll: true,
    //       autoPlayCurve: Curves.linear,
    //       autoPlayInterval: Duration(milliseconds: 0), /// carousel will not run if set to zero
    //       autoPlayAnimationDuration: Duration(milliseconds: 1000),
    //       viewportFraction: 0.8,
    //       scrollDirection: Axis.horizontal
    //   ),
    // );
}
