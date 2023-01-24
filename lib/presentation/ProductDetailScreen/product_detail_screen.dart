import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:obatala/core/utils/app_url.dart';
import 'package:obatala/core/utils/math_utils.dart';
import 'package:obatala/core/widgets/Courosel_widget.dart';
import 'package:obatala/core/widgets/Sponser_carousel.dart';
import 'package:obatala/core/widgets/combi_Deal_Card.dart';
import 'package:obatala/core/widgets/product_card.dart';
import 'package:obatala/core/widgets/skelton.dart';
import 'package:obatala/presentation/Dashboard/fotter.dart';
import 'package:obatala/presentation/ProductDetailScreen/Controller/productDetailController.dart';
import 'package:obatala/theme/app_style.dart';
import 'package:shimmer/shimmer.dart';
import 'package:simple_html_css/simple_html_css.dart';



class ProductDetailsPage extends GetWidget<ProductDetailController> {
  ProductDetailsPage({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final featuredImages = [
  "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
  "https://wallpaperaccess.com/full/2637581.jpg",
  "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
];

  RxInt activePage = 0.obs;
  RxBool showMore= false.obs;


  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
   var Deal =controller.a;
      // +controller.productDetailModel.value.price;
    return Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text("Obatala Coffee",
              style: AppStyle.textStyleRobotoromanmedium14
                  .copyWith(fontSize: getFontSize(16))),
          actions: const [
            Icon(
              Icons.person_outline,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
            SizedBox(
              width: 4,
            )
          ],
          elevation: 1,
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: RefreshIndicator(
            onRefresh: ()async{
              controller.ProductDetailApiCall();
              controller.ProductDetailRelatedProductApiCall();
              controller.ProductDetailBundleApiCall();
              controller.ProductDetailAlsoBoughtApiCall();
            },
            child: SingleChildScrollView(
              child: Obx(()=>controller.loading.value==true?
              Shimmer.fromColors(
                child:
                Padding(
                  padding: const EdgeInsets.only(top:30,right: 15.0,left: 15),
                  child: Column(children: [
                    Row(
                      children: [
                        skelton(height: 50,width: 320,),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        skelton(height: 50,width: 320,),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        skelton(height: 60,width: 320,),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        skelton(height: 20,width: 130,),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        skelton(height: 20,width: 130,),
                      ],
                    ),
                    SizedBox(height: 5,),

                    Row(
                      children: [
                        skelton(height: 20,width: 130,),
                      ],
                    ),
                    SizedBox(height: 10,),

                    Row(
                      children: [
                        skelton(
                          height: 200,
                          width: 320,
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        skelton(height: 50,width: 50,),
                        SizedBox(width: 10,),
                        skelton(height: 50,width: 50,),
                        SizedBox(width: 10,),
                        skelton(height: 50,width: 50,)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        skelton(
                          height: 40,
                          width: 60,
                        ),
                        SizedBox(width: 10,),
                        skelton(
                          height: 30,
                          width: 60,
                        )
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        skelton(
                          height: 30,
                          width: 200,
                        ),
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
                    padding: EdgeInsets.only(
                        top: 10.0, right: 15, left: 15, bottom: 10),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.search),
                            hintText: "Zoeken naar....",
                            border: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 3, color: Colors.grey),
                            )),
                      ),
                    ),
                  ),
                  verticalCourosel(),
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, left: 15.0, right: 8.0, bottom: 8.0),
                      child: Text(
                        "Obatala Coffee   >  Koffiezetapparten",
                        style:AppStyle.textStyleAdventProregular16.copyWith(
                          color: Colors.black,
                            fontSize: getFontSize(
                              10,
                            ))
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      width: MediaQuery.of(context).size.width *0.80,

                      child:Obx(()=> Text(controller.productDetailModel.value.name.toString(),
                          maxLines: 2,
                          style: AppStyle.textStyleRobotoromanmedium14
                              .copyWith(fontSize: getFontSize(25))),),
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 15,top: 5),
                    child: Container(
                      height:20,
                      width: MediaQuery.of(context).size.width *0.30,
                      child: SvgPicture.asset("assets/images/stars-5.svg"),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left:15.0),
                    child: Row(
                      children: [
                        Text("5.0 ", style: AppStyle.textStyleRobotoromanmedium14
                            .copyWith(fontSize: getFontSize(18)),),
                        Text("/ 5  ", style: AppStyle.textStyleAdventProregular124
                            .copyWith(height: 1.5, fontSize: getFontSize(16)),),
                        Icon(Icons.circle, size: 5,),
                        Text("  1  ",style: AppStyle.textStyleRobotoromanmedium14
                            .copyWith(fontSize: getFontSize(16)), ),
                        Text("review", style: AppStyle.textStyleAdventProregular124
                            .copyWith(height: 1.5, fontSize: getFontSize(16)),)
                      ],
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 15),
                  child: Text("Schrijf productbeoordeling",
                    style: AppStyle.textStyleAdventProregular16.copyWith(
                        color: Colors.black,
                        fontSize: getFontSize(
                          14,
                        )),
                  ),
                  ),

                  SizedBox(
                    height: 15,
                  ),
              SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Stack(
              children: [

             Obx(()=> CarouselSlider(
              carouselController: carouselController,
                // Give the controller
              options: CarouselOptions(
                viewportFraction: 1,
                initialPage: 0,
                onPageChanged: (int page,cs){
                  activePage.value=page;
                }
              ),
                items: [
                  ...controller.productDetailModel.value.images!.map((title) =>Image.network("https://staging-cdn.obatala.nl/"+title))
                ]

              ),),


                Container(
                  height: 70,
                  width: 150,
                  child: SvgPicture.network(APPURL.imageBaseUrl+controller.manufacturerIdModel.value.image.toString()),
                ),
                                         Align(
                                           alignment: Alignment.centerLeft,
                                           child: GestureDetector(
                                             onTap: (){
                                               carouselController.previousPage();
                                             },
                                             child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.grey,),
                                           ),
                                         ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: (){
                      carouselController.nextPage();
                    },
                    child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,),
                  ),
                ),
              ],
              ),
              ),
              SizedBox(height: 5,),

              Obx(()=>  Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: indicators(controller.productDetailModel.value.images!.length,activePage)),
              )),



                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,top: 10),
                    child: Row(
                      children: [
                       Obx(()=> Text(
                          "\u{20AC} ${controller.productDetailModel.value.price},-",
                          style: AppStyle.textStyleRobotoromanmedium14
                              .copyWith(fontSize: getFontSize(25)),
                        ),),
                        SizedBox(
                          width: 19,
                        ),
                        GestureDetector(
                          onTap: (){

                          },
                          child: Icon(
                            Icons.check_circle,
                            color:controller.productDetailModel.value.stockIndicatorTitle.toString()=="Niet op voorraad"?Colors.red: Colors.green,
                            size: 18,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Text(
                          controller.productDetailModel.value.stockIndicatorTitle.toString(),
                          style: AppStyle.textStyleRobotoromanmedium14
                              .copyWith(
                              fontSize: 14,
                              color: controller.productDetailModel.value.stockIndicatorTitle.toString()=="Niet op voorraad"?Colors.red:Colors.green),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 5),
                    child: Text(
                      "${controller.productDetailModel.value.stockDeliveryTime}",
                      style: AppStyle.textStyleAdventProregular16.copyWith(
                          color: Colors.black,
                          fontSize: getFontSize(
                            14,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                      height: 50,

                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0,right: 15),
                        child: ElevatedButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Text('in winkelwagen',
                                   style: AppStyle.textStyleRobotoromanmedium14
                                       .copyWith(fontSize: getFontSize(18,),color: Colors.white)
                               ),
                                SizedBox(width: 10,),
                          GestureDetector(
                            onTap: (){
                              carouselController.previousPage();
                            },
                            child: Icon(
                              Icons.shopping_cart_outlined,
                              size: 19,
                              color: Colors.white,
                            ),
                          ),
                            ],
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff208836),
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: SizedBox(
                          height: 40,
                          width: MediaQuery.of(context).size.width *0.60,
                          child: ElevatedButton(onPressed: (){},
                              style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                  side: const BorderSide(
                                  width: 1, // the thickness
                                  color: Colors.grey // the color of the border
                              )
                              ),
                              child: Row(
                                children: const [
                                  Text("Op verlanglijst",style: TextStyle(color: Colors.black),),

                                  Icon(Icons.favorite_border_rounded,color: Colors.black,)
                                ],
                              )),
                        ),
                      ),

                      IconButton(
                        iconSize: 20,
                        color: Colors.black87,
                        icon: const Icon(
                          Icons.facebook,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                      FaIcon(FontAwesomeIcons.instagram,color: Colors.black,),

                      IconButton(
                        iconSize: 20,
                        color: Colors.black87,
                        icon: const Icon(
                          Icons.whatsapp,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Html(
                    data: controller.productDetailModel.value.usp,
                  ),


                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 15),
                    child: Row(
                      children: [
                        Text("Omschrijving",
                        style: AppStyle.textStyleAdventProregular16.copyWith(
                            color: Color(0xff7a5216),
                            fontSize: getFontSize(
                              14,
                            )),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text("Specificaties",
                        style: AppStyle.textStyleAdventProregular16.copyWith(
                            color: Color(0xff7a5216),
                            fontSize: getFontSize(
                              14,
                            )),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text("Combi deal",
                          style: AppStyle.textStyleAdventProregular16.copyWith(
                              color:Color(0xff7a5216),
                              fontSize: getFontSize(
                                14,
                              )),
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("Omschrijving",
                        style: AppStyle.textStyleRobotoromanmedium14
                            .copyWith(fontSize: getFontSize(22))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Html(
                    data: controller.productDetailModel.value.description,
                  ),


                  Center(child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SizedBox(
                      height: 30,
                      width: 130,
                      child: ElevatedButton(onPressed: (){
                             showMore==false? showMore.value=true:showMore.value=false;
                      },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.brown)
                          ),
                          child: Row(children: [
                        Text("Show more",style: TextStyle(color: Colors.white),),
                       Obx(()=> Icon(showMore==true?Icons.keyboard_arrow_up:Icons.keyboard_arrow_down_outlined,color: Colors.white,))
                      ],)),
                    ),
                  )),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: Text("Specification",
                        style: AppStyle.textStyleRobotoromanmedium14
                            .copyWith(fontSize: getFontSize(20))),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Html(
                    data: controller.productDetailModel.value.descriptionTabs![0].content,
                  ),

                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),

                  //  Rating and review  ******************************************************8****

                  // Padding(padding: EdgeInsets.only(left: 15),
                  // child: Text("Beoordelingen",
                  //     style: AppStyle.textStyleRobotoromanmedium14
                  //         .copyWith(fontSize: getFontSize(20))
                  // ),
                  //
                  // ),
                  //
                  // Padding(padding: EdgeInsets.only(left: 15,top: 5),
                  //   child: Container(
                  //     height:20,
                  //     width: MediaQuery.of(context).size.width *0.30,
                  //     child: SvgPicture.asset("assets/images/stars-5.svg"),
                  //   ),
                  // ),
                  //
                  // Padding(
                  //   padding: const EdgeInsets.only(left:15.0,right: 15),
                  //   child: Row(
                  //     children: [
                  //       Text("5.0 ", style: AppStyle.textStyleRobotoromanmedium14
                  //           .copyWith(fontSize: getFontSize(18)),),
                  //       Text("/ 5  ", style: AppStyle.textStyleAdventProregular124
                  //           .copyWith(height: 1.5, fontSize: getFontSize(16)),),
                  //       Icon(Icons.circle, size: 5,),
                  //       Text("  1  ",style: AppStyle.textStyleRobotoromanmedium14
                  //           .copyWith(fontSize: getFontSize(16)), ),
                  //       Text("review", style: AppStyle.textStyleAdventProregular124
                  //           .copyWith(height: 1.5, fontSize: getFontSize(16)),),
                  //       Spacer(),
                  //       Icon(Icons.star,color: Colors.green,size: 18,),
                  //       Text("Trustpilot",style: AppStyle.textStyleRobotoromanmedium14
                  //           .copyWith(fontSize: getFontSize(16)))
                  //     ],
                  //   ),
                  // ),
                  //
                  //
                  //
                  // Divider(
                  //   thickness: 1,
                  //   color: Colors.grey,
                  // ),
                  //
                  // Padding(padding: EdgeInsets.only(left: 15,right: 15,
                  // ),
                  // child: Column(
                  //
                  //   children: [
                  //   Row(
                  //     children: [
                  //       Text("Anoniem", style: AppStyle.textStyleAdventProregular124
                  //     .copyWith(height: 1.5, fontSize: getFontSize(16))),
                  //       Spacer(),
                  //       Text("27 nov.", style: AppStyle.textStyleAdventProregular124
                  //           .copyWith(height: 1.5, fontSize: getFontSize(16)))
                  //     ],
                  //   ),
                  //   SizedBox(height: 10,),
                  //
                  //   Row(
                  //     children: [
                  //       Container(
                  //           height: 20,
                  //           width: MediaQuery.of(context).size.width *0.30,
                  //           child: SvgPicture.asset("assets/images/stars-5.svg")),
                  //     ],
                  //   ),
                  //     SizedBox(height: 10,),
                  //     Text("Juist vanwege de ingebouwde weegschaal ideaal. Het scheelt tijd, maar ik lever niet in op kwaliteit. De snelheid van het malen en directe doorvoer (dus geen retentie van koffie) komt wel met het nadeel dat de molen luider is dan de andere varianten. Desalniettemin ben ik er erg blij mee",
                  //         style:  AppStyle.textStyleAdventProregular16.copyWith(
                  //             color: Colors.black,
                  //             fontSize: getFontSize(
                  //               14,
                  //             ))
                  //     )
                  // ],),
                  //
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(15.0),
                  //   child: Divider(
                  //     thickness: 1,
                  //   ),
                  // ),



                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
                    child: Text("Bijpassende producten",
                        style: AppStyle.textStyleRobotoromanmedium14
                            .copyWith(fontSize: getFontSize(20))),
                  ),

                Column(
                  children: [
                  Obx(()=>  controller.productDetailRelatedProductModel.value.list1!.isEmpty?SizedBox():
                  ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                          itemCount:controller.productDetailRelatedProductModel.value.list1!.length,
                          itemBuilder: (BuildContext context, int index){
                        return  Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: ProductCard(
                            productImage: controller.productDetailRelatedProductModel.value.list1![index].metaData!.image.toString(),
                              imageHeight: controller.productDetailRelatedProductModel.value.list1![index].metaData!.imageHeight,
                              imageWidth: controller.productDetailRelatedProductModel.value.list1![index].metaData!.imageWidth,
                              productName: controller.productDetailRelatedProductModel.value.list1![index].name,
                              productPrice:  controller.productDetailRelatedProductModel.value.list1![index].price.toString(),
                              productOfferPrice:  controller.productDetailRelatedProductModel.value.list1![index].oldPrice.toString(),
                              featureHighlight1: controller.productDetailRelatedProductModel.value.list1![index].featureHighlight1,
                              featureHighlight2: controller.productDetailRelatedProductModel.value.list1![index].featureHighlight2,
                              featureHighlight3: controller.productDetailRelatedProductModel.value.list1![index].featureHighlight3,
                              featureHighlight4: controller.productDetailRelatedProductModel.value.list1![index].featureHighlight4,
                              stockIndicator:  controller.productDetailRelatedProductModel.value.list1![index].stockIndicator,
                            stockIndicatorDescription:  controller.productDetailRelatedProductModel.value.list1![index].stockIndicatorDescription,
                          ),
                        );
                      }),)
                  ],
                ),


                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
                    child: Text("Combi deal",
                        style: AppStyle.textStyleRobotoromanmedium14
                            .copyWith(fontSize: getFontSize(20))),
                  ),

                    Column(
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: controller.productDetailBundleModel.value.list1!.length,
                            itemBuilder: (BuildContext context, int index){
                          return  Obx(()=>Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: ProductCard(
                                  productName:controller.productDetailModel.value.name.toString(),
                                  productPrice:  controller.productDetailModel.value.price.toString(),
                                  productImage:controller.productDetailModel.value.images![0],
                                  combiDeal: true,
                                  // imageHeight: controller.productDetailAlsoBoughtModel.value.list1![index].metaData!.imageHeight,
                                  // imageWidth: controller.productDetailAlsoBoughtModel.value.list1![index].metaData!.imageWidth,
                                ),
                              ),

                              Column(
                                children: [
                                  controller.loading.value==true?SizedBox(): ListView.builder(
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount:controller.productCount.value,
                                      itemBuilder: (BuildContext context, int i){
                                        return  Padding(
                                          padding: const EdgeInsets.only(left: 15.0,right: 15),
                                          child: CombiDealCard(
                                            productImage: controller.productDetailBundleModel.value.list1![index].products![i].metaData!.image.toString(),
                                            imageHeight: controller.productDetailBundleModel.value.list1![index].products![i].metaData!.imageHeight,
                                            imageWidth: controller.productDetailBundleModel.value.list1![index].products![i].metaData!.imageWidth,
                                            productName: controller.productDetailBundleModel.value.list1![index].products![i].name,
                                            offerLabel: controller.productDetailBundleModel.value.list1![index].products![i].customLabel![0].label,
                                            productPrice: controller.productDetailBundleModel.value.list1![index].products![i].price.toString(),
                                            productOfferPrice: controller.productDetailBundleModel.value.list1![index].products![i].oldPrice.toString(),
                                          ),
                                        );
                                      }),
                                ],
                              )

                            ],
                          ),);
                        }),
                      ],
                    ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15),
                    child: Column(
                      children: [
                        Text("Maak gebruik van deze voordelige combi deal op de accessoires bij aankoop van de",
                        maxLines: 4,
                        ),
                        Row(
                          children: [
                            Text(controller.productDetailModel.value.name.toString(),style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(Deal.toString(),style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:15.0,top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // Text(controller.productDetailModel.value.price,style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),



                  Container(
                      height: 50,

                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0,right: 15),
                        child: ElevatedButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('in winkelwagen',
                                  style: AppStyle.textStyleRobotoromanmedium14
                                      .copyWith(fontSize: getFontSize(18,),color: Colors.white)
                              ),
                              SizedBox(width: 10,),
                              GestureDetector(
                                onTap: (){
                                  carouselController.previousPage();
                                },
                                child: Icon(
                                  Icons.shopping_cart_outlined,
                                  size: 19,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff208836),
                          ),
                        ),
                      )),



                  Padding(padding: EdgeInsets.all(15),
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
                    child: Text("Other customers also bought",
                        style: AppStyle.textStyleRobotoromanmedium14
                            .copyWith(fontSize: getFontSize(20))),
                  ),
                   Column(
                    children: [
                    Obx(()=>  ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: controller.productDetailAlsoBoughtModel.value.list1!.length,
                          itemBuilder: (BuildContext context, int index){
                            return  Padding(
                              padding: const EdgeInsets.only(left: 15.0,right: 15),
                              child: ProductCard(
                                productName:controller.productDetailAlsoBoughtModel.value.list1![index].name,
                                productImage: controller.productDetailAlsoBoughtModel.value.list1![index].metaData!.image.toString(),
                                imageHeight: controller.productDetailAlsoBoughtModel.value.list1![index].metaData!.imageHeight,
                                imageWidth: controller.productDetailAlsoBoughtModel.value.list1![index].metaData!.imageWidth,
                                productPrice:  controller.productDetailAlsoBoughtModel.value.list1![index].price.toString(),
                                productOfferPrice:  controller.productDetailAlsoBoughtModel.value.list1![index].oldPrice.toString(),
                                featureHighlight1: controller.productDetailAlsoBoughtModel.value.list1![index].featureHighlight1,
                                featureHighlight2: controller.productDetailAlsoBoughtModel.value.list1![index].featureHighlight2,
                                featureHighlight3: controller.productDetailAlsoBoughtModel.value.list1![index].featureHighlight3,
                                featureHighlight4: controller.productDetailAlsoBoughtModel.value.list1![index].featureHighlight4,
                                stockIndicator:  controller.productDetailAlsoBoughtModel.value.list1![index].stockIndicator,
                                stockIndicatorDescription:  controller.productDetailAlsoBoughtModel.value.list1![index].stockIndicatorDescription,

                              ),
                            );
                          }),)
                    ],
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

                              Container(
                                height: MediaQuery.of(context).size.height *0.45,
                                child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: 10,
                                    itemBuilder:
                                        (BuildContext context, int index){
                                      return fotterContent(text: "Product $index");
                                    }
                                ),
                              ),
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
                                        backgroundColor: Colors.green,
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

        ],
    )),
    ),
          )
        )
    );
  }


  List<Widget> indicators(imagesLength, currentIndex) {
    print("image length"+imagesLength.toString());
    print("image current Index"+currentIndex.toString());
    return List<Widget>.generate(imagesLength, (index) {
      return Obx(()=>  Container(
        margin: EdgeInsets.all(3),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: currentIndex == index ? Colors.grey : Colors.transparent,width: 2),
            // color: currentIndex == index ? Colors.black : Colors.black26,
            // shape: BoxShape.circle
        ),
        child: Container(
          height: 45,
          width: 45,
          child:  Image.network(
            "${APPURL.imageBaseUrl}"+controller.productDetailModel.value.images![index],
            fit: BoxFit.fill,
          ),
        ),
      ));
    });

  }
}



class Specification extends StatelessWidget {
  String? SpecificationKey;
  String? value;
   Specification({Key? key, this.SpecificationKey, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0,right: 15),
      child: Column(
        children: [
          Container(
            color: Colors.blueGrey[50],
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width *0.30,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text("Diameter"),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width *0.60,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text("13 cm"),
                  ),
                )
              ],
            ),
          ),
          Container(
            // color: Colors.blueGrey[50],
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width *0.30,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text("Hoogte"),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width *0.60,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text("21,6 cm"),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.blueGrey[50],
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width *0.30,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text("Capaciteit"),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width *0.60,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text("887 ml"),
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}

