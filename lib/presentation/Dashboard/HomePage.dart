import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:obatala/core/utils/app_url.dart';
import 'package:obatala/core/utils/color_constant.dart';
import 'package:obatala/core/utils/math_utils.dart';
import 'package:obatala/core/widgets/Courosel_widget.dart';
import 'package:obatala/core/widgets/Sponser_carousel.dart';
import 'package:obatala/core/widgets/common_scafford.dart';
import 'package:obatala/core/widgets/product_card.dart';
import 'package:obatala/core/widgets/skelton.dart';
import 'package:obatala/presentation/Dashboard/Category/Controller/category_controller.dart';
import 'package:obatala/presentation/Dashboard/fotter.dart';
import 'package:obatala/routes/app_routes.dart';
import 'package:obatala/theme/app_style.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

   CategoryController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return CommonScafford(
      // backgroundColor: Colors.white,
      // drawer: Drawer(
      //   child: DrawerWidget(),
      // ),
        commonAppBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title:SvgPicture.asset("assets/images/logoobatalacoffee.svg",height: 30,width: 100,),
        actions:  [
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              // PopupMenuItem 1
              PopupMenuItem(
                value: 1,
                // row with 2 children
                child: Row(
                  children: [
                    const Text("Dutch")
                  ],
                ),
              ),
              // PopupMenuItem 2
              PopupMenuItem(
                value: 2,
                // row with two children
                child: Row(
                  children: [
                    const Text("English")
                  ],
                ),
              ),
            ],
            offset: const Offset(0, 50),
            color: Colors.white,
            elevation: 2,
            icon: const Icon(Icons.language),
            // on selected we show the dialog box
            onSelected: (value) {
              if (value == 1) {
                Get.updateLocale(const Locale('nl','DF'));
                
              } else if (value == 2) {
                Get.updateLocale(const Locale('en','US'));
              }
            },
          ),
          const SizedBox(width: 10,),
          const Icon(Icons.shopping_cart_outlined,color: Colors.black,),
          const SizedBox(width: 4,)
        ],
        elevation: 1,
        backgroundColor: Colors.white,
      ),
        child: RefreshIndicator(
          displacement: 250,
        onRefresh: () async {
          controller.CategoryApiCall();
          controller.ProductApiCall();
          controller.ManufacturerApiCall();
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child:
         Obx(()=>Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Padding(
                  padding: const EdgeInsets.only(top: 10.0,right: 15,left: 15,bottom: 10),
                  child: SizedBox(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.search),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(width: 3, color: Colors.grey),
                          ),
                          hintText: "lbl_search_for".tr
                      ),
                    ),
                  ),
                ),
                verticalCourosel(),
                controller.loading.value==true?
                Shimmer.fromColors(
                  child: Padding(
                    padding: const EdgeInsets.only(top:30,right: 30.0,left: 30),
                    child: Column(children: [
                      Row(
                        children: [
                          const skelton(height: 50,width: 300,),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          const skelton(height: 50,width: 300,),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          const skelton(height: 30,width: 100,),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          const skelton(height: 130,width: 130,),
                          const SizedBox(width: 30,),
                          const skelton(height: 130,width: 130,),
                        ],
                      ), const SizedBox(height: 10,),
                      Row(
                        children: [
                          const skelton(height: 130,width: 130,),
                          const SizedBox(width: 30,),
                          const skelton(height: 130,width: 130,),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          const skelton(height: 130,width: 130,),
                          const SizedBox(width: 30,),
                          const skelton(height: 130,width: 130,),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          const skelton(height: 130,width: 130,),
                          const SizedBox(width: 30,),
                          const skelton(height: 130,width: 130,),
                        ],
                      )


                    ],),
                  ),

                  baseColor: Colors.grey[300]!, highlightColor: Colors.grey[400]!,
                  period: const Duration(seconds: 3),
                )
                    :

                Column(
                  children: [
                    Padding(padding: const EdgeInsets.only(top: 15,right: 15,left: 15,),
                      child: Row(
                        children: [
                          Text('lbl_browse_our_range'.tr,style: AppStyle.textStyleRobotoromanmedium14
                              .copyWith(fontSize: getFontSize(20)),),
                        ],
                      ),
                    ),

                    controller.categoryModelData!.value.list1 != null
                        ?
                    Obx(()=> controller.loading.value ? const SizedBox() : Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: GridView.builder(
                          padding: const EdgeInsets.all(0),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 3 / 2.8,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20
                          ),
                          itemCount: controller.categoryModelData!.value.list1!.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return
                              GestureDetector(
                                onTap: (){
                                  print("On pressed");
                                  Get.toNamed(AppRoutes.productList,
                                      arguments: {
                                        "categoryId":controller.categoryModelData!.value.list1![index].crumbPath![0].id.toString(),
                                        "slug":controller.categoryModelData!.value.list1![index].crumbPath![0].slug.toString()
                                      }
                                  );
                                },
                                child: Container(
                                    height: 350,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(Radius.circular(4)),
                                        border: Border.all(color: Colors.grey)
                                    ),
                                    child:Column(children: [
                                      const SizedBox(height: 20,),
                                      Container(
                                        height: 85,
                                        width: 85,
                                        // child: Image.network("${APPURL.imageBaseUrl}"+controller.categoryModelData!.value.list1![index].image.toString(),
                                        //   errorBuilder: (context, error, stackTrace) {
                                        //     return Center(child: Row(
                                        //       children:  [
                                        //         Image.asset("assets/images/icon-152x152.png")
                                        //       ],
                                        //     ));
                                        //   },
                                        // ),
                                        child: CachedNetworkImage(
                                          imageUrl: "${APPURL.imageBaseUrl}"+controller.categoryModelData!.value.list1![index].image.toString(),
                                          placeholder: (context, url) => SizedBox(height:30,width:30,child: SpinKitCircle(color: ColorConstant.appPrimaryColor,)),
                                          errorWidget: (context, url, error) => SizedBox(height:50,width:50,child: Image.asset("assets/images/icon-152x152.png")),
                                        ),

                                      ),
                                      const SizedBox(height: 10,),
                                      Text(controller.categoryModelData!.value.list1![index].name.toString()==null?
                                      "":controller.categoryModelData!.value.list1![index].name.toString(),
                                          style: AppStyle.textStyleRobotoromanmedium14.copyWith(
                                              fontSize: getFontSize(
                                                14,
                                              )))
                                    ],)
                                ),
                              );
                          }),
                    ),):const SizedBox(),



                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          Text("lbl_most_sold".tr,
                            style: AppStyle.textStyleRobotoromanmedium14
                                .copyWith(fontSize: getFontSize(20)),
                          ),
                        ],
                      ),
                    ),

                    controller.productModelData!.value.list1 != null
                        ?
                    Obx(()=>controller.loading.value==true?const SizedBox():  Column(
                      children: [
                        Padding(padding: const EdgeInsets.only(left: 15,top: 10),
                            child:ListView.builder(
                                shrinkWrap: true,
                                physics:  const NeverScrollableScrollPhysics(),
                                itemCount: controller.productModelData!.value.list1!.length,
                                itemBuilder: (BuildContext context, int index){
                                  return GestureDetector(
                                    onTap: (){
                                      // print("recent");
                                      // try{
                                      //   Get.find<PrefUtils>().setRecentProduct(controller.productModelData!.value.list1![index].id.toString() );
                                      // }catch(e){
                                      //   print("Exception-"+"Error list Data");
                                      //
                                      // }
                                      // print("recent pro");

                                      Get.toNamed(AppRoutes.productDetailScreen,
                                          arguments: {
                                            "productID":controller.productModelData!.value.list1![index].id.toString(),
                                            "manufacturerID":controller.productModelData!.value.list1![index].manufacturerId.toString()
                                          }
                                      );
                                    },
                                    child: ProductCard(
                                      homePage: true,
                                      productImage: "${controller.productModelData!.value.list1![index].images![0]}",
                                      imageWidth: controller.productModelData!.value.list1![index].metaData!.imageWidth,
                                      imageHeight: controller.productModelData!.value.list1![index].metaData!.imageHeight,
                                      productName: controller.productModelData!.value.list1![index].name.toString()=="null"?"": controller.productModelData!.value.list1![index].name,
                                      productRating: controller.productModelData!.value.list1![index].ratingValue.toString()=="null"?"":controller.productModelData!.value.list1![index].ratingValue,
                                      productPrice: controller.productModelData!.value.list1![index].price.toString(),
                                      productOfferPrice: controller.productModelData!.value.list1![index].oldPrice.toString(),
                                      stockIndicator: controller.productModelData!.value.list1![index].stockIndicator.toString(),
                                    ),
                                  );
                                })
                        ),
                      ],
                    )):const SizedBox(),
                    const SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("msg_at_obatala_coffee_you_will".tr,
                        style: AppStyle.textStyleRobotoromanmedium14
                            .copyWith(fontSize: getFontSize(25)),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                      child: Text("msg_obatala_coffee_is_distinguished".tr,
                        style: AppStyle.textStyleAdventProregular124
                            .copyWith(fontSize: getFontSize(14)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                      child: Text("msg_because_we_select_and".tr,
                        style: AppStyle.textStyleAdventProregular124
                            .copyWith(fontSize: getFontSize(14)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                      child: Text("msg_all_coffees_from".tr,
                        style: AppStyle.textStyleAdventProregular124
                            .copyWith(fontSize: getFontSize(14)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                      child: Text("msg_this_ensures_that_you".tr,
                        style: AppStyle.textStyleAdventProregular124
                            .copyWith(fontSize: getFontSize(14)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                      child: Text("msg_in_amsterdam_we_br".tr,
                        style: AppStyle.textStyleAdventProregular124
                            .copyWith(fontSize: getFontSize(14)),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                      child: Text("msg_obatala_coffee_ensure".tr,
                        style: AppStyle.textStyleAdventProregular124
                            .copyWith(fontSize: getFontSize(14)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                      child: Text("msg_whether_it_prefers".tr,
                        style: AppStyle.textStyleAdventProregular124
                            .copyWith(fontSize: getFontSize(14)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                      child: Text("msg_everything_can_be_found".tr,
                        style: AppStyle.textStyleAdventProregular124
                            .copyWith(fontSize: getFontSize(14)),
                      ),
                    ),

                    const SizedBox(height: 20,),
                    Container(
                      height: 100,
                      child: Obx(()=>SponcerCarousel(controller.manufacturerImage)),
                    ),

                    Obx(()=>controller.loading.value==true?const SizedBox():

                    FotterClass())

                  ],
                ),




              ],),),)
        ),
      )
    );
  }




}


class fotterContent extends StatelessWidget {
  String text;
  fotterContent({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 15.0,top: 10,bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.arrow_forward_ios,
            size: 15,
            color: Colors.white,
          ),
          const SizedBox(width: 20,),
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

