import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:obatala/presentation/Dashboard/Category/Controller/category_controller.dart';
import 'package:obatala/theme/app_style.dart';

import '../../core/utils/math_utils.dart';
import 'HomePage.dart';

class FotterClass extends GetWidget<CategoryController> {
  FotterClass({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          color: Colors.black,

          width: 800,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 20),
                  child: Text("Customer service ",
                      style: AppStyle.textStyleRobotoromanmedium14
                          .copyWith(fontSize: getFontSize(18), color: Colors.white)),
                ),
                fotterContent(text:"To order"),
                fotterContent(text: "Pay"),
                fotterContent(text:  "Delivery and collection"),
                fotterContent(text:  "Return and exchange"),
                fotterContent(text:  "Warranty and repair"),


                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 20),
                  child: Text("Product",
                      style: AppStyle.textStyleRobotoromanmedium14
                          .copyWith(fontSize: getFontSize(18), color: Colors.white)),
                ),

                controller.categoryModelData!.value.list1 != null
                    ?
                Column(
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller.categoryModelData!.value.list1!.length,
                        itemBuilder:
                            (BuildContext context, int index){
                          return fotterContent(text:controller.categoryModelData!.value.list1![index].name.toString());
                        }
                    ),
                  ],
                ):SizedBox(),
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 20),
                  child: Text("Knowledge Base ",
                      style: AppStyle.textStyleRobotoromanmedium14
                          .copyWith(fontSize: getFontSize(18), color: Colors.white)),
                ),
                fotterContent(text:"Which coffee grinder to buy?"),
                fotterContent(text: "How to make an espresso"),

                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 20),
                  child: Text("Newsletter ",
                      style: AppStyle.textStyleRobotoromanmedium14
                          .copyWith(fontSize: getFontSize(18), color: Colors.white)),
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                    decoration: InputDecoration(
                      focusColor: Colors.white,
                      filled: true,
                      fillColor: Colors.white,
                      //add prefix icon
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      errorText: "",
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(),
                      ),

                      hintText: "Email-address",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: "verdana_regular",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:15.0),
                      child: ElevatedButton(
                        child: const Text(
                          'Sign up',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.lightGreenAccent,
                          primary: Colors.green,
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.facebook,
                      size: 45,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Center(
                          child:
                          FaIcon(FontAwesomeIcons.instagram,color: Colors.black,),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 110,left: 15),
                  child: Row(
                    children: [
                      Text("Uiteskend    4.7 uit 5 ",
                          style: AppStyle.textStyleRobotoromanmedium14.copyWith(
                              fontSize: getFontSize(14), color: Colors.white)),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        iconSize: 3,
                        color: Colors.green,
                        icon: const Icon(
                          Icons.star,
                          size: 23,
                        ),
                        onPressed: () {},
                      ),
                      Text("Trustpilot",
                          style: AppStyle.textStyleRobotoromanmedium14.copyWith(
                              fontSize: getFontSize(14), color: Colors.white))
                    ],
                  ),
                )
              ]),
        ),

        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  color: Colors.white,
                  child: SvgPicture.asset(
                    "assets/images/logo_visa.svg",
                    height: 25,
                    width: 25,
                  ),
                ),
                SizedBox(
                  width:7,),
                SvgPicture.asset(
                  "assets/images/logo_paypal.svg",
                  height: 25,
                  width: 25,
                ),

                SvgPicture.asset(
                  "assets/images/logo_applepay.svg",
                  height: 25,
                  width: 25,
                ),
              ],
            ),
          ),
        ),

        SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Text("Copyright © 2011-2023 Obatala Coffee",
              style: TextStyle(fontSize: 10)),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Privacybeleid | ", style: TextStyle(fontSize: 10)),
            Text(" KvK: 27349892 | ", style: TextStyle(fontSize: 10)),
            Text(" BTW: NL821075664B01",
                style: TextStyle(fontSize: 10)),
          ],
        ),

        Center(
          child: Text(
              "Beoordeling op Trustpilot: 4.7 / 5 - 27 beoordelingen",
              style: TextStyle(fontSize: 10)),
        ),
        SizedBox(
          height: 10,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Gemaakt met ♥ door",
                style: TextStyle(color: Colors.black,fontSize: 10)),
            SvgPicture.asset("assets/images/logo_ftl_gray.svg",
              height: 10,width: 10,
            )
          ],
        ),
      ],
    );

  }
}