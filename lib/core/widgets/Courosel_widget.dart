import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:obatala/core/utils/math_utils.dart';
import 'package:obatala/theme/app_style.dart';

verticalCourosel() {
  return Container(
    height: 60,
    child:
    CarouselSlider.builder(

      itemCount: 3,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
      Container(color: Colors.blueGrey[50],
        child: Padding(
          padding: const EdgeInsets.only(left:20.0),
          child: Row(children: [
            Icon(Icons.settings,size: 30,color: Colors.grey,),
            SizedBox(width: 10,),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Text("Environmentally friendly",style: AppStyle.textStyleRobotoromanmedium14.copyWith(
                  fontSize: getFontSize(
                    16,
                  ),),),
                SizedBox(height: 4,),
                Text("less waste less polution"),
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
        enableInfiniteScroll: true,

        autoPlayAnimationDuration: Duration(milliseconds: 800),
        // viewportFraction: 0.8,
        scrollDirection: Axis.vertical
    ),
    ),
    // color: Colors.brown,
    // child: CarouselSlider(
    //   items: [
    //     //2nd Image of Slider
    //     ListTile(
    //       leading: Icon(Icons.settings),
    //       title: Text("Environmentally friendly",style: TextStyle(fontSize: 12),),
    //       subtitle: Text("Less waste, less pollution",style: TextStyle(fontSize: 12),),
    //     ),
    //     //3rd Image of Slider
    //     Container(
    //       child: Center(
    //         child: Text("Hello"),
    //       ),
    //       decoration: BoxDecoration(
    //         color: Colors.grey[200],
    //
    //       ),
    //     ),
    //     //4th Image of Slider
    //     Container(
    //       child: Center(
    //         child: Text("Hello"),
    //       ),
    //       decoration: BoxDecoration(
    //         color: Colors.grey[200],
    //
    //       ),
    //     ),
    //     //5th Image of Slider
    //     Container(
    //       // child: Center(child: Text("Hello"),),
    //       decoration: BoxDecoration(
    //         color: Colors.grey[200],
    //
    //         // image: DecorationImage(
    //         //   image: NetworkImage("ADD IMAGE URL HERE"),
    //         //   fit: BoxFit.cover,
    //         // ),
    //       ),
    //     ),
    //   ],
    //   //Slider Container properties
    //   options: CarouselOptions(
    //       height: 50,
    //       autoPlay: true,
    //       // aspectRatio: 16 / 9,
    //       autoPlayCurve: Curves.fastOutSlowIn,
    //       enableInfiniteScroll: true,
    //       autoPlayAnimationDuration: Duration(milliseconds: 800),
    //       // viewportFraction: 0.8,
    //       scrollDirection: Axis.vertical),
    // ),
  );
}
