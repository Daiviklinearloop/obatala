import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:obatala/core/utils/math_utils.dart';
import 'package:obatala/core/widgets/Courosel_widget.dart';
import 'package:obatala/core/widgets/Sponser_carousel.dart';
import 'package:obatala/core/widgets/common_scafford.dart';
import 'package:obatala/core/widgets/product_card.dart';
import 'package:obatala/core/widgets/skelton.dart';
import 'package:obatala/presentation/Dashboard/Drawer.dart';
import 'package:obatala/presentation/Product_List/Controller/product_list_controller.dart';
import 'package:obatala/routes/app_routes.dart';
import 'package:obatala/theme/app_style.dart';
import 'package:shimmer/shimmer.dart';

class ProductListPage extends GetWidget<ProductListController>{
  Widget build(BuildContext context){
    return CommonScafford(

        commonAppBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text("Obatala Coffee",style:
          AppStyle.textStyleRobotoromanmedium14.copyWith(fontSize: getFontSize(16))
          ),
          actions:  [
            PopupMenuButton<int>(
              itemBuilder: (context) => [
                // PopupMenuItem 1
                PopupMenuItem(
                  value: 1,
                  // row with 2 children
                  child: Row(
                    children: [
                      Text("Dutch")
                    ],
                  ),
                ),
                // PopupMenuItem 2
                PopupMenuItem(
                  value: 2,
                  // row with two children
                  child: Row(
                    children: [
                      Text("English")
                    ],
                  ),
                ),
              ],
              offset: Offset(0, 50),
              color: Colors.white,
              elevation: 2,
              icon: Icon(Icons.language),
              // on selected we show the dialog box
              onSelected: (value) {
                if (value == 1) {
                  Get.updateLocale(Locale('nl','DF'));

                } else if (value == 2) {
                  Get.updateLocale(Locale('en','US'));
                }
              },
            ),
            SizedBox(width: 10,),
            Icon(Icons.shopping_cart_outlined,color: Colors.black,),
            SizedBox(width: 4,)
          ],
          elevation: 1,
          backgroundColor: Colors.white,
        ),
        child : SafeArea(
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
                          hintText: "lbl_search_for".tr,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 3, color: Colors.grey),
                          )
                      ),
                    ),
                  ),
                ),

                verticalCourosel(),

                // Padding(
                //     padding: const EdgeInsets.only(top: 8.0,left: 15.0,right: 8.0,bottom: 8.0),
                //     child: Text("Obatala Coffee",
                //       style:  AppStyle.textStyleRobotoromanmedium14.copyWith(
                //         fontSize: getFontSize(
                //           14,
                //         ),),)
                // ),
                Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 15.0,bottom: 8.0),
                    child:Container(
                      width: 80,
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
                                'lbl_filter'.tr,
                                style:  AppStyle.textStyleRobotoromanmedium11.copyWith(
                                  fontSize: getFontSize(
                                    14,
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
                      style:   AppStyle.textStyleRobotoromanmedium14.copyWith(fontSize: getFontSize(30))
                  ),
                ),

                controller.categoryDetailModelData!.value.description != null
                    ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Html(
                  data: controller.categoryDetailModelData!.value.description,
                ),
                    )
                    : SizedBox(),


                // Padding(
                //   padding: const EdgeInsets.only(left: 15,top: 10,right: 15),
                //   child: Text("msg_coffee_from".tr,
                //       style:   AppStyle.textStyleRobotoromanmedium14.copyWith(fontSize: getFontSize(18))
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 15,top: 15,right: 15),
                //   child: Text("msg_coffee_maker_cannot".tr,
                //       style:   AppStyle.textStyleAdventProregular124.copyWith(
                //           height: 1.5,
                //           fontSize: getFontSize(11))
                //   ),
                // ),

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

                controller.categoryDetailModelData!.value.cmsBottomContent != null
                    ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Html(
                    data: controller.categoryDetailModelData!.value.cmsBottomContent,
                  ),
                )
                    : SizedBox(),


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