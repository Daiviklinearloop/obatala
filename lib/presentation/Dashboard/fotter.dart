import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:obatala/presentation/Dashboard/Category/Controller/category_controller.dart';

import '../../core/utils/math_utils.dart';
import '../../theme/app_style.dart';

class Fotter extends StatefulWidget {
    Fotter({Key? key,}) : super(key: key);

  @override
  State<Fotter> createState() => _FotterState();
}

class _FotterState extends State<Fotter> {
  CategoryController controller =CategoryController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.black,
          height: 700,
          width: 800,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 20),
              child: Text("Klantssrvices",
                  style: AppStyle.textStyleRobotoromanmedium14
                      .copyWith(fontSize: getFontSize(18), color: Colors.white)),
            ),

                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 20),
                  child: Text("",
                      style: AppStyle.textStyleRobotoromanmedium14
                          .copyWith(fontSize: getFontSize(18), color: Colors.white)),
                ),
            // Text(controller.categoryModelData.value.list1!.length.toString()),
            // Container(
            //   height: MediaQuery.of(context).size.height,
            //   child: ListView.builder(
            //       itemCount: 2,
            //       itemBuilder: (BuildContext context, int index){
            //     return fotterContent(text:""
            //     // controller.categoryModelData.value.list1![index].name.toString()
            //     );
            //   }),
            // ),

                ListView.builder(
                    itemCount: 3,
                    itemBuilder:
                (BuildContext context, int index){
                  return fotterContent(text: controller.categoryModelData!.value.list1![index].name.toString());
                }
                ),

            fotterContent(text:'' ),
            fotterContent(text: "Retourneren en ruilen"),
            fotterContent(text: "Garantie en reparatie"),
            fotterContent(text: "Beatlean"),

            SizedBox(
              height: 10,
            ),


                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 20),
                  child: Text("Product ",
                      style: AppStyle.textStyleRobotoromanmedium14
                          .copyWith(fontSize: getFontSize(18), color: Colors.white)),
                ),
                SizedBox(height: 20,),

                fotterContent(text:""),
                fotterContent(text: "Hoe maak je een espresso"),
                fotterContent(text:  "Welke koffiemolen kopen?"),
                fotterContent(text:  "Nieuwsbrief"),


            SizedBox(
              height: 30,
            ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,),
                  child: Text("Kennisbank",
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
                      'Anamelden',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.lightGreenAccent,
                      backgroundColor: Colors.green,
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Icon(
                  Icons.facebook,
                  size: 45,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Center(
                    child:
                    FaIcon(FontAwesomeIcons.instagram,color: Colors.black,),
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


class fotterContent extends StatelessWidget {
  String text;
   fotterContent({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.arrow_forward_ios,
            size: 15,
            color: Colors.white,
          ),
           SizedBox(width: 20,),
           Text(
            "$text",
            style: AppStyle.textStyleRobotoromanmedium14
                .copyWith(fontSize: getFontSize(14), color: Colors.white)
          ),
        ],
      ),
    );
  }
}
