import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:obatala/core/utils/math_utils.dart';
import 'package:obatala/core/widgets/Courosel_widget.dart';
import 'package:obatala/core/widgets/Sponser_carousel.dart';
import 'package:obatala/core/widgets/product_card.dart';
import 'package:obatala/core/widgets/skelton.dart';
import 'package:obatala/presentation/Dashboard/Drawer.dart';
import 'package:obatala/presentation/Product_List/Controller/product_list_controller.dart';
import 'package:obatala/routes/app_routes.dart';
import 'package:obatala/theme/app_style.dart';
import 'package:shimmer/shimmer.dart';

class ProductListPage extends GetWidget<ProductListController>{
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.white,

        drawer: Drawer(

            child: SingleChildScrollView(
              child: Column(
                children: [
                  Obx(() => Container(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                        itemCount: controller
                            .categoryModelData!.value.list1!.isEmpty
                            ? 0
                            : controller.categoryModelData!.value.list1!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.back();
                                  controller.ProductListReload(controller.categoryModelData!
                                            .value.list1![index].crumbPath![0].id
                                            .toString(),
                                      controller.categoryModelData!.value
                                          .list1![index].crumbPath![0].slug
                                          .toString()
                                  );
                                  // Get.back();
                                  print("on Pressed" );


                                  // Get.toNamed(AppRoutes.productList, arguments: {
                                  //   "categoryId": controller.categoryModelData!
                                  //       .value.list1![index].crumbPath![0].id
                                  //       .toString(),
                                  //   "slug": controller.categoryModelData!.value
                                  //       .list1![index].crumbPath![0].slug
                                  //       .toString()
                                  // });


                                },
                                child: ListTile(
                                  title: Text(controller
                                      .categoryModelData!.value.list1![index].name
                                      .toString()),
                                ),
                              ),
                              Divider(),
                            ],
                          );
                        }),
                  ))
                ],
              ),
            ),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text("Obatala Coffee",style:
          AppStyle.textStyleRobotoromanmedium14.copyWith(fontSize: getFontSize(16))
          ),
          actions:  [
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
            child:
        Obx(()=> controller.loading.value==true?
          Shimmer.fromColors(
                child:
                     Padding(
                   padding: const EdgeInsets.only(top:30,right: 30.0,left: 30),
                     child: Column(children: [
                      Row(
                      children: [
                        skelton(height: 50,width: 300,),
                     ],
                   ),
      SizedBox(height: 10,),
      Row(
        children: [
          skelton(height: 50,width: 300,),
        ],
      ),
      SizedBox(height: 10,),
      Row(
        children: [
          skelton(height: 30,width: 100,),
        ],
      ),
      SizedBox(height: 10,),

      Row(
        children: [
          skelton(height: 30,width: 100,),
        ],
      ),
      SizedBox(height: 10,),
      skelton(height: 100,width: 300,),
      SizedBox(height: 5,),

      Row(
        children: [
          skelton(height: 130,width: 100,),
          SizedBox(width: 10,),
          skelton(height: 130,width: 170,),
        ],
      ), SizedBox(height: 10,),Row(
        children: [
          skelton(height: 130,width: 100,),
          SizedBox(width: 10,),
          skelton(height: 130,width: 170,),
        ],
      ), SizedBox(height: 10,),

    ],),
  ),

  baseColor: Colors.grey[300]!, highlightColor: Colors.grey[400]!,
  period: Duration(seconds: 3),
)
    :
            Column(
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
                          onPressed: () {
                            Get.toNamed(AppRoutes.filterPage);
                          },
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
                  child: Text(controller.slug.toString(),
                      style:   AppStyle.textStyleRobotoromanmedium14.copyWith(fontSize: getFontSize(25))
                  ),
                ),

                // Padding(
                //   padding: const EdgeInsets.only(left: 15,top: 10,right: 15),
                //   child: Text("Coffee from a coffee maker, a quiet start to your day",
                //       style:   AppStyle.textStyleRobotoromanmedium14.copyWith(fontSize: getFontSize(18))
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 15,right: 15),
                  child: Text("Coffee makers cannot be ignored from the Netherlands. With a coffee maker we think of filter coffee also called slowdrip, precisely because it is the quiet way of making coffee. It is the most famous way, and almost every household has a filter coffee machine in the kitchen. Coffee, water and a paper filter, that's all you need.",
                      style:   AppStyle.textStyleAdventProregular124.copyWith(
                          height: 1.5,
                          fontSize: getFontSize(11))
                  ),
                ),

                Column(
                  children: [
                    controller.productListModel!.value.list1 !=null?
                   Obx(()=>controller.loading==true?SizedBox(): ListView.builder(
                      shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller.productListModel!.value.list1!.length,
                        itemBuilder: (BuildContext context, int index){
                          return Padding(padding: EdgeInsets.only(left: 15,right: 15),
                          child:Obx(()=> GestureDetector(
                            onTap: (){

                              Navigator.pushNamed(
                                  context,
                                  AppRoutes.productDetailScreen,
                                  arguments: {
                                    "productID":controller.productListModel!.value.list1![index].id.toString(),
                                    "manufacturerID":controller.productListModel!.value.list1![index].manufacturerId.toString()
                                  }
                              );
                              // Get.toNamed(AppRoutes.productDetailScreen,
                              //     arguments: {
                              //       "productID":controller.productListModel!.value.list1![index].id.toString(),
                              //       "manufacturerID":controller.productListModel!.value.list1![index].manufacturerId.toString()
                              //     }
                              // );
                            },
                            child: ProductCard(
                              productName: controller.productListModel!.value.list1![index].name.toString(),
                              productImage:
                              controller.productListModel!.value.list1![index].metaData!.image.toString(),
                              imageWidth: controller.productListModel!.value.list1![index].metaData!.imageWidth,
                              imageHeight: controller.productListModel!.value.list1![index].metaData!.imageHeight,
                              productPrice: controller.productListModel!.value.list1![index].price.toString(),
                              productOfferPrice: controller.productListModel!.value.list1![index].oldPrice.toString(),
                              featureHighlight1: controller.productListModel!.value.list1![index].featureHighlight1.toString(),
                              featureHighlight2: controller.productListModel!.value.list1![index].featureHighlight2.toString(),
                              featureHighlight3: controller.productListModel!.value.list1![index].featureHighlight3.toString(),
                              featureHighlight4: controller.productListModel!.value.list1![index].featureHighlight4.toString(),
                            ),
                          ),)

                          );
                        }
                    )):
                   const SizedBox(),
                  ],
                ),

                // Padding(padding: EdgeInsets.only(
                //     left: 17,top: 30
                // ),
                //   child:ProductCard(productName: "",),
                // ),



                Padding(padding: EdgeInsets.only(
                    left: 17,top: 30
                ),
                  child:Column(
                    children: [
                      Text("Buy a piston machine or espresso machine?",
                        style: AppStyle.textStyleRobotoromanmedium14
                            .copyWith(fontSize: getFontSize(20)),
                      ),
                      SizedBox(height: 15,),
                      Text("There is no difference between a piston machine or an espresso machine. The piston in the word piston machine refers to the filter carrier, which is what we call the piston. All espresso machines in our range therefore have a piston, so both a piston machine and an espresso machine, are both semi-automatic espresso machines.",
                        style: AppStyle.textStyleAdventProregular124
                            .copyWith(height: 1.5, fontSize: getFontSize(13)),
                      )
                    ],
                  ),
                ),

                Padding(padding: EdgeInsets.only(
                    left: 17,top: 30
                ),
                  child:Column(
                    children: [
                      Text("How do you put espresso with your espresso machine?",
                        style: AppStyle.textStyleRobotoromanmedium14
                            .copyWith(fontSize: getFontSize(20)),
                      ),
                      SizedBox(height: 15,),
                      Text("Do you already have a semi-automatic espresso machine at home? Then you probably know that an espresso tastes much better from an espresso machine than from a normal coffee maker. But how do you make the perfect espresso with such a semi-automatic espresso machine? We have a solution for that, because we explained in our knowledge base how to make the best espresso yourself.",
                        style: AppStyle.textStyleAdventProregular124
                            .copyWith(height: 1.5, fontSize: getFontSize(13)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  child:
                  SponcerCarousel([]),
                ),

              ],),),
          ),
        )
    );
  }
}