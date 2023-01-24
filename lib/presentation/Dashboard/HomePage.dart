import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:obatala/core/utils/math_utils.dart';
import 'package:obatala/core/widgets/Courosel_widget.dart';
import 'package:obatala/core/widgets/Sponser_carousel.dart';
import 'package:obatala/core/widgets/category_Card.dart';
import 'package:obatala/core/widgets/product_card.dart';
import 'package:obatala/core/widgets/skelton.dart';
import 'package:obatala/presentation/Dashboard/Category/Controller/category_controller.dart';
import 'package:obatala/presentation/Dashboard/fotter.dart';
import 'package:obatala/routes/app_routes.dart';
import 'package:obatala/theme/app_style.dart';
import 'package:shimmer/shimmer.dart';


class HomePage extends GetWidget<CategoryController> {
   HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(children:  [

           Obx(()=>  Container(
               height: MediaQuery.of(context).size.height,
               child: ListView.builder(
                   itemCount: controller.categoryModelData!.value.list1!.isEmpty?0:controller.categoryModelData!.value.list1!.length,
                   itemBuilder:(BuildContext context,int index){
                 return Column(
                   children: [
                     ListTile(
                       title: Text(controller.categoryModelData!.value.list1![index].name.toString()),
                     ),
                     Divider(),
                   ],
                 );
               }),
             ))
              
            ],),
          ),
        ),
      ),
      appBar: AppBar(
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
      body: RefreshIndicator(
          displacement: 250,
        onRefresh: () async {
        controller.CategoryApiCall();
        controller.ProductApiCall();
        controller.ManufacturerApiCall();

        },
        child: SafeArea(
          child: SingleChildScrollView(
            child:
         Obx(()=>       controller.loading.value==true?
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
             : Column(
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

                Padding(padding: EdgeInsets.only(top: 15,right: 15,left: 15,),
                child: Text("Browse our range",style: AppStyle.textStyleRobotoromanmedium14
                    .copyWith(fontSize: getFontSize(20)),),
                ),


              Obx(()=> Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 3 / 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20
                      ),
                      itemCount: controller.categoryModelData!.value.list1!.isEmpty?null:controller.categoryModelData!.value.list1!.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return GestureDetector(
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
                                  height: 40,
                                  width: 40,
                                  child: Image.network("https://staging-cdn.obatala.nl/"+controller.categoryModelData!.value.list1![index].image.toString(),

                                     errorBuilder: (context, error, stackTrace) {
                                    return Center(child: Row(
                                      children:  [
                                        Image.asset("assets/images/icon-152x152.png")
                                      ],
                                    ));
                                   },
                                  ),

                                ),
                                SizedBox(height: 10,),
                                Text(controller.categoryModelData!.value.list1![index].name.toString()==null?
                                    "null":controller.categoryModelData!.value.list1![index].name.toString(),
                                    style: AppStyle.textStyleRobotoromanmedium14.copyWith(
                                    fontSize: getFontSize(
                                      14,
                                    )))
                              ],)
                          ),
                        );
                      }),
                ),
              ),),



            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text("Most Sold",
              style: AppStyle.textStyleRobotoromanmedium14
                      .copyWith(fontSize: getFontSize(20)),
              ),
            ),

              Obx(()=>  Column(
                children: [
                  Padding(padding: EdgeInsets.only(left: 15,top: 10),
                    child:ListView.builder(
                      shrinkWrap: true,
                      physics:  NeverScrollableScrollPhysics(),
                        itemCount: controller.productModelData!.value.list1!.isEmpty?0: controller.productModelData!.value.list1!.length ,
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
                          productName: controller.productModelData!.value.list1![index].name.toString()=="null"?"null": controller.productModelData!.value.list1![index].name,
                          productRating: controller.productModelData!.value.list1![index].ratingValue.toString()=="null"?"null":controller.productModelData!.value.list1![index].ratingValue,
                          productPrice: controller.productModelData!.value.list1![index].price.toString(),
                          productOfferPrice: controller.productModelData!.value.list1![index].oldPrice.toString(),
                          stockIndicator: controller.productModelData!.value.list1![index].stockIndicator.toString(),
                        ),
                      );
                    })
                    ),
                ],
              )
                ),
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

                Column(
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

                          Obx(()=>controller.loading.value==true?SizedBox():  Container(
                              height: MediaQuery.of(context).size.height *0.45,
                              child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                  itemCount: controller.categoryModelData!.value.list1!.length,
                                  itemBuilder:
                                      (BuildContext context, int index){
                                    return fotterContent(text: controller.categoryModelData!.value.list1![index].name.toString());
                                  }
                              ),
                            ),),
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
                )


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

