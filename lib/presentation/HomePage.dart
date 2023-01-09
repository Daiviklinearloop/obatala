import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:obatala/core/utils/math_utils.dart';
import 'package:obatala/core/widgets/Courosel_widget.dart';
import 'package:obatala/core/widgets/product_card.dart';
import 'package:obatala/theme/app_style.dart';

class HomePage extends GetWidget {
   HomePage({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
           title: Text("Obatala Coffee",style:
           AppStyle.textStyleRobotoromanmedium14.copyWith(fontSize: getFontSize(16))
           ),
          actions: const [
        Icon(Icons.person_outline,color: Colors.black,),
        SizedBox(width: 10,),
        Icon(Icons.shopping_cart_outlined,color: Colors.black,),
        SizedBox(width: 4,)
      ],
      elevation: 1,
      backgroundColor: Colors.white,
    ),
      body:

        SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
              Padding(
                padding: EdgeInsets.only(top: 10.0,right: 15,left: 15,bottom: 10),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      hintText: "Search for...",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.grey),
                      )
                    ),
                  ),
                ),
              ),

              verticalCourosel(),

              Padding(
                padding: const EdgeInsets.only(top: 8.0,left: 15.0,right: 8.0,bottom: 8.0),
                child: Text("Obatala Coffee",
                  style:  AppStyle.textStyleRobotoromanmedium14.copyWith(
                    fontSize: getFontSize(
                      14,
                    ),),)
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0,left: 15.0,bottom: 8.0),
                child:Container(
                  width: 75,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.black, //<-- SEE HERE
                    ),
                    onPressed: () {},
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.tune_outlined,color: Colors.white,size: 14),
                        Text(
                          'Filter',
                          style:  AppStyle.textStyleRobotoromanmedium11.copyWith(
                              fontSize: getFontSize(
                                10,
                              ),
                        ),
                  ),
                      ],
                    )
              ),
                )
              ),

                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text("Coffee makers",
                      style:   AppStyle.textStyleRobotoromanmedium14.copyWith(fontSize: getFontSize(25))
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 10,right: 15),
                  child: Text("Coffee from a coffee maker, a quiet start to your day",
                      style:   AppStyle.textStyleRobotoromanmedium14.copyWith(fontSize: getFontSize(18))
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 15,right: 15),
                  child: Text("Coffee makers cannot be ignored from the Netherlands. With a coffee maker we think of filter coffee also called slowdrip, precisely because it is the quiet way of making coffee. It is the most famous way, and almost every household has a filter coffee machine in the kitchen. Coffee, water and a paper filter, that's all you need.",
                      style:   AppStyle.textStyleAdventProregular124.copyWith(
                          height: 1.5,
                          fontSize: getFontSize(11))
                  ),
                ),
                Padding(padding: EdgeInsets.only(
                  left: 17,top: 30
                ),
                child:ProductCard(),
                )


            ],),
          ),
        )
    );
  }
}
