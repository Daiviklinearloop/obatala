import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:obatala/core/utils/app_url.dart';
import 'package:obatala/core/utils/math_utils.dart';
import 'package:obatala/core/widgets/Courosel_widget.dart';
import 'package:obatala/core/widgets/Sponser_carousel.dart';
import 'package:obatala/core/widgets/category_Card.dart';
import 'package:obatala/core/widgets/common_scafford.dart';
import 'package:obatala/core/widgets/product_card.dart';
import 'package:obatala/core/widgets/skelton.dart';
import 'package:obatala/presentation/Dashboard/Category/Controller/category_controller.dart';
import 'package:obatala/presentation/Dashboard/Category/Model/CategoryModel.dart';
import 'package:obatala/presentation/Dashboard/Drawer.dart';
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
        iconTheme: IconThemeData(color: Colors.black),
        title:SvgPicture.asset("assets/images/logoobatalacoffee.svg",height: 30,width: 100,),
        actions: const [
          Icon(Icons.person_outline,color: Colors.black,),
          SizedBox(width: 10,),
          Icon(Icons.shopping_cart_outlined,color: Colors.black,),
          SizedBox(width: 4,)
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
                const Padding(
                  padding: EdgeInsets.only(top: 10.0,right: 15,left: 15,bottom: 10),
                  child: SizedBox(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.search),
                          hintText: "Search for... ",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 3, color: Colors.grey),
                          )
                      ),
                    ),
                  ),
                ),
                verticalCourosel(),
                controller.loading.value==true?
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
                          skelton(height: 130,width: 130,),
                          SizedBox(width: 30,),
                          skelton(height: 130,width: 130,),
                        ],
                      ), SizedBox(height: 10,),
                      Row(
                        children: [
                          skelton(height: 130,width: 130,),
                          SizedBox(width: 30,),
                          skelton(height: 130,width: 130,),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          skelton(height: 130,width: 130,),
                          SizedBox(width: 30,),
                          skelton(height: 130,width: 130,),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          skelton(height: 130,width: 130,),
                          SizedBox(width: 30,),
                          skelton(height: 130,width: 130,),
                        ],
                      )


                    ],),
                  ),

                  baseColor: Colors.grey[300]!, highlightColor: Colors.grey[400]!,
                  period: Duration(seconds: 3),
                )
                    :

                Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 15,right: 15,left: 15,),
                      child: Text("Browse our range",style: AppStyle.textStyleRobotoromanmedium14
                          .copyWith(fontSize: getFontSize(20)),),
                    ),

                    controller.categoryModelData!.value.list1 != null
                        ?
                    Obx(()=> controller.loading.value ? SizedBox() : Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: GridView.builder(
                          padding: EdgeInsets.all(0),
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
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
                                        borderRadius: BorderRadius.all(Radius.circular(4)),
                                        border: Border.all(color: Colors.grey)
                                    ),
                                    child:Column(children: [
                                      SizedBox(height: 20,),
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
                                          placeholder: (context, url) => SizedBox(height:30,width:30,child: SpinKitCircle(color: Color(0xFF703926),)),
                                          errorWidget: (context, url, error) => SizedBox(height:50,width:50,child: Image.asset("assets/images/icon-152x152.png")),
                                        ),

                                      ),
                                      SizedBox(height: 10,),
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
                    ),):SizedBox(),



                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          Text("Most Sold",
                            style: AppStyle.textStyleRobotoromanmedium14
                                .copyWith(fontSize: getFontSize(20)),
                          ),
                        ],
                      ),
                    ),

                    controller.productModelData!.value.list1 != null
                        ?
                    Obx(()=>controller.loading.value==true?SizedBox():  Column(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 15,top: 10),
                            child:ListView.builder(
                                shrinkWrap: true,
                                physics:  NeverScrollableScrollPhysics(),
                                itemCount: controller.productModelData!.value.list1!.length,
                                itemBuilder: (BuildContext context, int index){
                                  return GestureDetector(
                                    onTap: (){
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
                    )):SizedBox(),
                    const SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("At Obatala Coffee you will find all your coffee and kitchen appliances",
                        style: AppStyle.textStyleRobotoromanmedium14
                            .copyWith(fontSize: getFontSize(25)),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                      child: Text("Obatala Coffee is distinguished by the knowledge of its products and is aware of the latest trends in the coffee world.",
                        style: AppStyle.textStyleAdventProregular124
                            .copyWith(fontSize: getFontSize(14)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                      child: Text("Because we select and import our coffee beans ourselves, we can also tell and justify the honest story of our coffee.",
                        style: AppStyle.textStyleAdventProregular124
                            .copyWith(fontSize: getFontSize(14)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                      child: Text("All coffees from our selection are Ecological and Fair Trade approved.",
                        style: AppStyle.textStyleAdventProregular124
                            .copyWith(fontSize: getFontSize(14)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                      child: Text("This ensures that you pay not only the farmer, but also nature a fair fee for delicious coffee.",
                        style: AppStyle.textStyleAdventProregular124
                            .copyWith(fontSize: getFontSize(14)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                      child: Text("In Amsterdam we burn the Arabica coffee beans in small batches. We do this so that we always have a fresh offer.",
                        style: AppStyle.textStyleAdventProregular124
                            .copyWith(fontSize: getFontSize(14)),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                      child: Text("Obatala Coffee ensures that you have the right appliances for the best coffee.",
                        style: AppStyle.textStyleAdventProregular124
                            .copyWith(fontSize: getFontSize(14)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                      child: Text("Whether it prefers to drink an espresso or slow coffee from a V60, we have the right coffee maker.",
                        style: AppStyle.textStyleAdventProregular124
                            .copyWith(fontSize: getFontSize(14)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                      child: Text("Everything can be found here in the webshop. And if you need help, we are there for you.",
                        style: AppStyle.textStyleAdventProregular124
                            .copyWith(fontSize: getFontSize(14)),
                      ),
                    ),

                    SizedBox(height: 20,),
                    Container(
                      height: 100,
                      child: Obx(()=>SponcerCarousel(controller.manufacturerImage)),
                    ),
      Obx(()=>controller.loading.value==true?SizedBox():
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

