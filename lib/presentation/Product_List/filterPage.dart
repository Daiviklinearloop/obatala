import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obatala/presentation/Product_List/Controller/product_list_controller.dart';
import 'package:obatala/theme/app_style.dart';

import '../../core/utils/math_utils.dart';

class FilterPage extends GetWidget<ProductListController>{

  RxBool checkbox= false.obs;
  RxBool checkbox1= false.obs;
  RxBool checkbox2= false.obs;
  RxDouble start = 30.0.obs;
  RxDouble end = 50.0.obs;
  Rx<TextEditingController> ControllerEnd = TextEditingController().obs;
  // var ControllerStart= TextEditingController().obs;

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff616161),
        title:Text("Filteren",style:  AppStyle.textStyleAdventProbold222.copyWith(
            color: Colors.white,
            fontSize: getFontSize(18))),

        actions: [
          Icon(Icons.close_sharp,color: Colors.white,size: 16,)
        ],
      ),
      body: SafeArea(child:
        ListView(children:[

          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.list!.length,
              itemBuilder: (BuildContext context,int index){
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15,top: 10),
                      child: Row(
                        children: [
                          Text(controller.list![index].label.toString(),style:  AppStyle.textStyleRobotoromanmedium14.copyWith(fontSize: getFontSize(18)),),
                          Spacer(),
                          Icon(Icons.keyboard_arrow_up,color: Colors.grey,)
                        ],
                      ),
                    ),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount:controller.list![index].children!.length,
                        itemBuilder: (BuildContext context, int i){
                      return Padding(
                        padding: const EdgeInsets.only(left: 15.0,right: 15,top: 10),
                        child: Row(
                          children: [
                            Obx(()=>  GestureDetector(
                                onTap: (){
                                 // controller.users[index].children[i].checked==false?controller.users[index].children[i].checked=true:controller.users[index].children[i].checked=false;
                                  controller.list![index].children![i].checked!.value=!controller.list![index].children![i].checked!.value;                                  print("check box "+controller.list![index].children![i].checked.toString());

                                  },
                                child:
                                controller.list![index].children![i].checked!.value==true? Icon(Icons.check_box,color: Colors.black): Icon(Icons.check_box_outline_blank)),),
                            SizedBox(width: 10,),
                            Text(controller.list![index].children![i].label.toString(),style: AppStyle.textStyleAdventProregular1010.copyWith(
                                fontSize: getFontSize(14)
                            )),
                            Spacer(),
                            Text("( ${controller.list![index].children![i].counter.toString()} )",style: AppStyle.textStyleAdventProregular1010.copyWith(
                                fontSize: getFontSize(14)
                            )),
                          ],
                        ),
                      );
                    }),




                  ],
                );
              }
          ),

          // Padding(
          //   padding: const EdgeInsets.only(left: 15.0,right: 15,top: 10),
          //   child: Row(
          //     children: [
          //       Text(controller.list![0].label.toString(),style:  AppStyle.textStyleRobotoromanmedium14.copyWith(fontSize: getFontSize(18)),),
          //     Spacer(),
          //     Icon(Icons.keyboard_arrow_up,color: Colors.grey,)
          //     ],
          //   ),
          // ),
          //
          // Padding(
          //   padding: const EdgeInsets.only(left: 15.0,right: 15,top: 10),
          //   child: Row(
          //     children: [
          //     Obx(()=>  GestureDetector(
          //           onTap: (){
          //          checkbox==true?checkbox.value=false:checkbox.value=true;
          //          print("check box "+checkbox.toString());
          //        },
          //           child: checkbox==true? Icon(Icons.check_box,color: Colors.blue): Icon(Icons.check_box_outline_blank)),),
          //       SizedBox(width: 10,),
          //       Text("ECM",style: AppStyle.textStyleAdventProregular1010.copyWith(
          //         fontSize: getFontSize(14)
          //       )),
          //     Spacer(),
          //       Text("( 1 )",style: AppStyle.textStyleAdventProregular1010.copyWith(
          //           fontSize: getFontSize(14)
          //       )),
          //     ],
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 15.0,right: 15,top: 10),
          //   child: Row(
          //     children: [
          //       Obx(()=>  GestureDetector(
          //           onTap: (){
          //             checkbox1==true?checkbox1.value=false:checkbox1.value=true;
          //             print("check box "+checkbox1.toString());
          //           },
          //           child: checkbox1==true? Icon(Icons.check_box,color: Colors.blue): Icon(Icons.check_box_outline_blank)),),
          //       SizedBox(width: 10,),
          //       Text("Lelit",style: AppStyle.textStyleAdventProregular1010.copyWith(
          //           fontSize: getFontSize(14)
          //       )),
          //       Spacer(),
          //       Text("( 4 )",style: AppStyle.textStyleAdventProregular1010.copyWith(
          //           fontSize: getFontSize(14)
          //       )),
          //     ],
          //   ),
          // ),   Padding(
          //   padding: const EdgeInsets.only(left: 15.0,right: 15,top: 10),
          //   child: Row(
          //     children: [
          //       Obx(()=>  GestureDetector(
          //           onTap: (){
          //             checkbox2==true?checkbox2.value=false:checkbox2.value=true;
          //             print("check box "+checkbox2.toString());
          //           },
          //           child: checkbox2==true? Icon(Icons.check_box,color: Colors.blue,): Icon(Icons.check_box_outline_blank)),),
          //       SizedBox(width: 10,),
          //       Text("Merken",style: AppStyle.textStyleAdventProregular1010.copyWith(
          //           fontSize: getFontSize(14)
          //       )),
          //       Spacer(),
          //       Text("( 12 )",style: AppStyle.textStyleAdventProregular1010.copyWith(
          //           fontSize: getFontSize(14)
          //       )),
          //     ],
          //   ),
          // ),

          Divider(thickness: 1,color: Colors.grey[300],),


          Padding(
            padding: const EdgeInsets.only(left: 15.0,right: 15,top: 10),
            child: Row(
              children: [
                Text("Prijs",style:  AppStyle.textStyleRobotoromanmedium14.copyWith(fontSize: getFontSize(18)),),
                Spacer(),
                Icon(Icons.keyboard_arrow_up,color: Colors.grey,)
              ],
            ),
          ),

       Obx(()=>   RangeSlider (
         activeColor: Color(0xff262526),
            inactiveColor: Colors.grey[300],
            values: RangeValues(start.value, end.value),
            labels: RangeLabels(start.toString(), end.toString()),
            onChanged: (value) {
                start.value = value.start;
                end.value = value.end;
                // ControllerStart.ControllerStartvalue=value.start as TextEditingController;

            },
            min: 10.0,
            max: 80.0,
          ),),
          // Obx(()=>
          // Text(
          //   " Start: " +
          //       start.toStringAsFixed(2) +
          //       "\nEnd: " +
          //       end.toStringAsFixed(2),
          //   style: const TextStyle(
          //     fontSize: 16.0,
          //   ),
          // ),),

          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.euro_outlined, size: 16,),
                Container(
                  height: 40,
                  width: 100,
                  child: TextField(
                    // controller: ControllerStart.value,
                    decoration: InputDecoration(
                      border: OutlineInputBorder()

                  ),)
                ),
                SizedBox(width: 10,),

                Text("tot"),
                SizedBox(width: 10,),
                Container(
                  height: 40,
                  width: 100,
                  child: TextField(
                    // controller: ControllerEnd,
                    decoration: InputDecoration(
                        border: OutlineInputBorder()
                    ),
                  ),
                ),
                SizedBox(width: 10,),

                Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Color(0xff212529),
                ),
                child: Center(child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: 14,),),
                )
              ],
            ),
          )
        ])
    )
    );

  }
}