import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obatala/presentation/Product_List/Controller/product_list_controller.dart';
import 'package:obatala/routes/app_routes.dart';
import 'package:obatala/theme/app_style.dart';

import '../../core/utils/math_utils.dart';
import '../Dashboard/Drawer.dart';

class FilterPage extends GetWidget<ProductListController>{
   FilterPage({super.key});

  RxList manufacturer=[].obs;
  @override
  Widget build(BuildContext context){

    return Scaffold(
        backgroundColor: Colors.white,
        // drawer: Drawer(
        //   child: DrawerWidget(),
        // ),
        appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff616161),
        title:Text("Filteren",style:  AppStyle.textStyleAdventProbold222.copyWith(
            color: Colors.white,
            fontSize: getFontSize(18))),

        actions: [
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
                padding: const EdgeInsets.only(left:10,right: 10),
                child: Icon(
                  Icons.close_sharp,
                  color: Colors.white,
                  size: 25,
                )
            ),
          )
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
                                  if( controller.list![index].children![i].checked!.value==true){
                                    if(manufacturer.contains(controller.list![index].children![i].id.toString())){
                                      print("Already there");
                                    }else{
                                      manufacturer.value.add(controller.list![index].children![i].id.toString());
                                    }

                                  }else{
                                    manufacturer.value.remove(controller.list![index].children![i].id.toString());
                                  }

                                 print("manufacturer"+manufacturer.toString());
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
                    Divider(color: Colors.grey[300],)
                  ],
                );
              }
          ),
         Obx(()=> RangeSlider(
            values: controller.currentRangeValues.value,
            activeColor: Colors.black,
            labels: RangeLabels(
              controller.currentRangeValues.value.start.round().toString(),
              controller.currentRangeValues.value.end.round().toString(),
            ),
            min: controller.start.value,
            max: controller.end.value,
            onChanged: (RangeValues values) {
                controller.currentRangeValues.value = values;
                controller.ControllerStart.text=values.start.round().toString();
                controller.ControllerEnd.text=values.end.round().toString();
                print("value"+controller.currentRangeValues.value.toString());
            },
          ),),


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
                    readOnly: true,
                    controller: controller.ControllerStart,
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
                    readOnly: true,
                    controller: controller.ControllerEnd,
                    decoration: InputDecoration(
                        border: OutlineInputBorder()
                    ),
                  ),),

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
          ),
            SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                print("manufacter list"+manufacturer.toString());
                print("Controller Start"+controller.ControllerStart.toString());
                print("Controller End"+controller.ControllerEnd.toString());
              controller.ProductListFilterApiCall(manufacturer,controller.ControllerStart.text.toString(),controller.ControllerEnd.text.toString());
              Get.toNamed(AppRoutes.productList);

              },
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Color(0xff212529),
                ),
                child: Center(child: Text("Show product",style: TextStyle(color: Colors.white),)),
              ),
            ),
          )

        ])
    )
    );

  }
}