import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:obatala/core/utils/app_url.dart';
import 'package:obatala/core/utils/color_constant.dart';
import 'package:obatala/core/utils/math_utils.dart';
import 'package:obatala/core/utils/pref_utils.dart';
import 'package:obatala/core/widgets/Courosel_widget.dart';
import 'package:obatala/core/widgets/Sponser_carousel.dart';
import 'package:obatala/core/widgets/combi_Deal_Card.dart';
import 'package:obatala/core/widgets/common_scafford.dart';
import 'package:obatala/core/widgets/product_card.dart';
import 'package:obatala/core/widgets/skelton.dart';
import 'package:obatala/presentation/Dashboard/Drawer.dart';
import 'package:obatala/presentation/Dashboard/fotter.dart';
import 'package:obatala/presentation/ProductDetailScreen/Controller/productDetailController.dart';
import 'package:obatala/theme/app_style.dart';
import 'package:shimmer/shimmer.dart';

import '../../routes/app_routes.dart';
import '../Dashboard/HomePage.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';


class ProductDetailsPage extends StatelessWidget {
  // ProductDetailsPage({super.key});
  // final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  GlobalKey _keyOmschrijving = GlobalKey();
  GlobalKey _keySpecification = GlobalKey();
  GlobalKey _keyCombiDeal = GlobalKey();
  RxInt activePage = 0.obs;
  RxBool showMore = false.obs;
  RxBool checkbox=true.obs;

  CarouselController carouselController = CarouselController();

  ProductDetailController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return CommonScafford(
        commonAppBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: Text("Obatala Coffee",
              style: AppStyle.textStyleRobotoromanmedium14
                  .copyWith(fontSize: getFontSize(16))),
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
            const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
            const SizedBox(
              width: 4,
            )
          ],
          elevation: 1,
          backgroundColor: Colors.white,
        ),
        child: SafeArea(
            child: RefreshIndicator(
                onRefresh: () async {
                  controller.ProductDetailApiCall();
                  controller.ProductDetailRelatedProductApiCall();
                  controller.ProductDetailBundleApiCall();
                  controller.ProductDetailAlsoBoughtApiCall();
                },
                child: SingleChildScrollView(
                  child: Obx(() => controller.loading.value == true
                      ? Shimmer.fromColors(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30, right: 15.0, left: 15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const skelton(
                                height: 50,
                                width: 320,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const skelton(
                                height: 50,
                                width: 320,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              const skelton(
                                height: 60,
                                width: 320,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const skelton(
                                height: 20,
                                width: 130,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              const skelton(
                                height: 20,
                                width: 130,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              const skelton(
                                height: 20,
                                width: 130,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const skelton(
                                height: 200,
                                width: 320,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const skelton(
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const skelton(
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const skelton(
                                height: 50,
                                width: 50,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const skelton(
                                height: 40,
                                width: 60,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const skelton(
                                height: 30,
                                width: 60,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              const skelton(
                                height: 30,
                                width: 200,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[400]!,
                    period: const Duration(seconds: 3),
                  )
                      : Obx(()=>Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [



                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, right: 15, left: 15, bottom: 10),
                        child: SizedBox(
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                                suffixIcon: const Icon(Icons.search),
                                hintText: "lbl_search_for".tr,
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide(width: 3, color: Colors.grey),
                                )),
                          ),
                        ),
                      ),

                      verticalCourosel(),

                      controller.productDetailModel.value.categoryName != null && controller.productDetailModel.value.categoryName!= ""
                          ?
                      Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15.0, right: 8.0, bottom: 8.0),
                          child: Text("Obatala Coffee  >  ${controller.productDetailModel.value.categoryName}",
                              style: AppStyle.textStyleAdventProregular16.copyWith(color: Colors.black, fontSize: getFontSize(10))
                          )
                      ):const SizedBox(),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          child: Obx(
                                () => Text(
                                controller.productDetailModel.value.name != null
                                    ?
                                controller.productDetailModel.value.name.toString() : "",
                                maxLines: 2,
                                style: AppStyle.textStyleRobotoromanmedium14
                                    .copyWith(fontSize: getFontSize(25))),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 5),
                        child: Container(
                          height: 20,
                          width: MediaQuery.of(context).size.width * 0.30,
                          child: SvgPicture.asset("assets/images/stars-5.svg"),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              controller.productDetailModel.value.ratingValue != null ? "${controller.productDetailModel.value.ratingValue} " : "-",
                              style: AppStyle.textStyleRobotoromanmedium14
                                  .copyWith(height: 1.5,fontSize: getFontSize(16)),
                            ),
                            Text(
                              "/ 5 ",
                              style: AppStyle.textStyleAdventProregular124
                                  .copyWith(height: 1.5, fontSize: getFontSize(16)),
                            ),
                            const Icon(
                              Icons.circle,
                              size: 5,
                            ),
                            Text(
                              controller.productDetailModel.value.ratingCount != null ? " ${controller.productDetailModel.value.ratingCount} " : " -",
                              style: AppStyle.textStyleRobotoromanmedium14.copyWith(height: 1.5,fontSize: getFontSize(16)),
                            ),
                            Text(
                              "lbl_review".tr,
                              style: AppStyle.textStyleAdventProregular124
                                  .copyWith(height: 1.5, fontSize: getFontSize(16)),
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "lbl_write_a_product_review".tr,
                          style: AppStyle.textStyleAdventProregular16.copyWith(
                              color: Colors.black,
                              fontSize: getFontSize(
                                14,
                              )),
                        ),
                      ),

                      const SizedBox(
                        height: 15,
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        child: Stack(
                          children: [
                            controller.productDetailModel.value.images != null
                                ? Obx(
                                  () => Center(
                                child: GestureDetector(
                                  onTap: () {

                                    Get.toNamed(AppRoutes.zoomImageScreen,
                                        arguments: {
                                          "product_images":controller.productDetailModel.value.images!,
                                          "current_pos":activePage.value,
                                          "manufacturer_image":controller.manufacturerIdModel.value.image.toString(),
                                          "product_name":controller.productDetailModel.value.name
                                        }
                                    );
                                  },
                                  child: CarouselSlider(
                                      carouselController: carouselController,
                                      // Give the controller
                                      options: CarouselOptions(
                                          viewportFraction: 1,
                                          initialPage: 0,
                                          onPageChanged: (int page, cs) {
                                            activePage.value = page;
                                          }),
                                      items: [
                                        ...controller.productDetailModel.value.images!
                                        //.map((title) => Image.network("${APPURL.imageBaseUrl}" + title,)
                                            .map((title) => Hero(
                                          tag: "pro",
                                          child: Container(
                                            child: CachedNetworkImage(
                                              imageUrl: "${APPURL.imageBaseUrl}" + title,
                                              placeholder: (context, url) => SizedBox(height:50,width:50,child: SpinKitCircle(color: ColorConstant.appPrimaryColor,)),
                                              errorWidget: (context, url, error) => SizedBox(height:50,width:50,child: Image.asset("assets/images/icon-152x152.png")),
                                            ),
                                          ),
                                        )
                                        )]),
                                ),
                              ),
                            )
                                : const SizedBox(),

                            controller.manufacturerIdModel.value.image != null && controller.manufacturerIdModel.value.image != ""
                                ?
                            Positioned(
                              top: 1,
                              child: Container(
                                height: 40,
                                width: 80,
                                alignment: Alignment.topLeft,
                                margin: const EdgeInsets.only(left: 15),
                                child: controller.manufacturerIdModel.value.image.toString().toLowerCase().contains(".svg")
                                    ?
                                SvgPicture.network(APPURL.imageBaseUrl + controller.manufacturerIdModel.value.image.toString())
                                    :
                                Image.network(APPURL.imageBaseUrl + controller.manufacturerIdModel.value.image.toString()),
                              ),
                            )
                                :
                            const SizedBox(),

                            Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                onTap: () {
                                  carouselController.previousPage();
                                },
                                child: const Icon(
                                  Icons.arrow_back_ios_new_outlined,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                onTap: () {
                                  carouselController.nextPage();
                                },
                                child: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 5,
                      ),
                      controller.productDetailModel.value.images != null
                          ? Obx(() => Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: indicators(
                                controller.productDetailModel.value
                                    .images!.length,
                                activePage)),
                      ))
                          : const SizedBox(),

                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 10),
                        child: Row(
                          children: [
                            Obx(
                                  () => Text(
                                controller.productDetailModel.value.price != null ?
                                "\u{20AC} ${controller.productDetailModel.value.price},-" : "",
                                style: AppStyle.textStyleRobotoromanmedium14
                                    .copyWith(fontSize: getFontSize(25)),
                              ),
                            ),
                            const SizedBox(
                              width: 19,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Icon(
                                Icons.check_circle,
                                color: controller.productDetailModel.value.stockIndicatorTitle.toString() == "Niet op voorraad" ? Colors.red : Colors.green,
                                size: 18,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              controller.productDetailModel.value.stockIndicatorTitle != null ?
                              controller.productDetailModel.value.stockIndicatorTitle.toString() : "",
                              style: AppStyle.textStyleRobotoromanmedium14
                                  .copyWith(
                                  fontSize: 14,
                                  color: controller.productDetailModel.value.stockIndicatorTitle.toString() == "Niet op voorraad" ? Colors.red : Colors.green),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 5),
                        child: Text(
                          controller.productDetailModel.value.stockDeliveryTime != null ?
                          "${controller.productDetailModel.value.stockDeliveryTime}" : "",
                          style: AppStyle.textStyleAdventProregular16.copyWith(
                              color: Colors.black,
                              fontSize: getFontSize(14)
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                          height: 50,
                          child: Padding(
                            padding:
                            const EdgeInsets.only(left: 15.0, right: 15),
                            child: ElevatedButton(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('lbl_add_to_cart'.tr,
                                      style: AppStyle
                                          .textStyleRobotoromanmedium14
                                          .copyWith(
                                          fontSize: getFontSize(
                                            18,
                                          ),
                                          color: Colors.white)),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      carouselController.previousPage();
                                    },
                                    child: const Icon(
                                      Icons.shopping_cart_outlined,
                                      size: 19,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff208836),
                              ),
                            ),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: SizedBox(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.53,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      side: const BorderSide(
                                          width: 1, // the thickness
                                          color: Colors.grey // the color of the border
                                      )),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:  [
                                      Text(
                                        "lbl_add_to_wish_list".tr,
                                        style: const TextStyle(color: Colors.black),
                                      ),
                                      const Icon(
                                        Icons.favorite_border_rounded,
                                        color: Colors.black,
                                      )
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

                          IconButton(
                            iconSize: 20,
                            color: Colors.black87,
                            icon: const Icon(
                              FontAwesomeIcons.instagram,
                              size: 30,
                            ),
                            onPressed: () {},
                          ),

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
                      const Divider(
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      controller.productDetailModel.value.usp != null
                          ? Html(
                        data: controller.productDetailModel.value.usp,
                      )
                          : const SizedBox(),

                      const SizedBox(
                        height: 15,
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 0, bottom: 0),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Scrollable.ensureVisible(
                                  _keyOmschrijving.currentContext!,
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.only(
                                    left: 20, top: 10, bottom: 10),
                                child: Text(
                                  "lbl_description".tr,
                                  style: AppStyle.textStyleAdventProregular16
                                      .copyWith(
                                      color: const Color(0xff7a5216),
                                      fontSize: getFontSize(
                                        14,
                                      )),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Scrollable.ensureVisible(
                                  _keySpecification.currentContext!,
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 10, bottom: 10),
                                child: Text(
                                  "lbl_specifications".tr,
                                  style: AppStyle.textStyleAdventProregular16
                                      .copyWith(
                                      color: const Color(0xff7a5216),
                                      fontSize: getFontSize(
                                        14,
                                      )),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Scrollable.ensureVisible(
                                  _keyCombiDeal.currentContext!,
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 10, bottom: 10),
                                child: Text(
                                  "lbl_combi_deal".tr,
                                  style: AppStyle.textStyleAdventProregular16
                                      .copyWith(
                                      color: const Color(0xff7a5216),
                                      fontSize: getFontSize(
                                        14,
                                      )),
                                ),
                              ),
                            ),
                            const Divider(
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),

                      Divider(
                        key: _keyOmschrijving,
                        color: Colors.grey,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text("lbl_description".tr,
                            style: AppStyle.textStyleRobotoromanmedium14
                                .copyWith(fontSize: getFontSize(22))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // controller.productDetailModel.value.description != null
                      //     ? Html(
                      //         data: controller
                      //             .productDetailModel.value.description,
                      //       )
                      //     : SizedBox(),
                      showMore == false
                          ?
                      controller
                          .productDetailModel.value.description!=null?
                      Container(
                        constraints: const BoxConstraints(maxHeight: 130),
                        // height: 150,
                        child: Html(
                          data: controller
                              .productDetailModel.value.description,
                        ),
                        foregroundDecoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.white.withOpacity(0.1),
                              Colors.white.withOpacity(0.1),
                              Colors.white.withOpacity(0.1),
                              Colors.white
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: const [0, 0, 0.4, 1],
                          ),
                        ),
                      ):const SizedBox()
                          : Html(
                        data: controller
                            .productDetailModel.value.description,
                      ),

                      Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: SizedBox(
                                  height: 30,
                                  //width: 135,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        showMore == false
                                            ? showMore.value = true
                                            : showMore.value = false;
                                      },
                                      style: ButtonStyle(
                                          backgroundColor:
                                          MaterialStateProperty.all(Colors.brown)),
                                      child: Row(
                                        children: [
                                          Text(
                                            showMore == true?  "lbl_show_less".tr : "lbl_show_more".tr,
                                            style: const TextStyle(color: Colors.white),
                                          ),
                                          Obx(() => Icon(
                                            showMore == true
                                                ? Icons.keyboard_arrow_up
                                                : Icons
                                                .keyboard_arrow_down_outlined,
                                            color: Colors.white,
                                          ))
                                        ],
                                      )),
                                ),
                              ),
                            ],
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      controller.productDetailModel.value.descriptionTabs != null && controller.productDetailModel.value.descriptionTabs!.length > 0
                          ?
                      Padding(
                        key: _keySpecification,
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Text("lbl_specifications".tr,
                            style: AppStyle.textStyleRobotoromanmedium14
                                .copyWith(fontSize: getFontSize(20))),
                      ):const SizedBox(),
                      const SizedBox(
                        height: 10,
                      ),
                      controller.productDetailModel.value.descriptionTabs != null && controller.productDetailModel.value.descriptionTabs!.length > 0
                          ? Obx(() => Html(
                        data: controller.productDetailModel.value
                            .descriptionTabs![0].content,
                      ))
                          : const SizedBox(),

                      controller.productDetailReviewModel.value.list1 ==null?
                      const Divider(
                        color: Colors.grey,
                      ):const SizedBox(),

                      //  Rating and review  ******************************************************8****
                      Obx(()=>controller.productDetailReviewModel.value.list1!=null && controller.productDetailReviewModel.value.list1!.isNotEmpty?
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text("lbl_Review".tr,
                            style: AppStyle.textStyleRobotoromanmedium14
                                .copyWith(fontSize: getFontSize(20))),
                      ):const SizedBox(),),


                      Obx(()=>controller.productDetailReviewModel.value.list1!=null && controller.productDetailReviewModel.value.list1!.isNotEmpty?
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 5),
                        child: Container(
                          height: 20,
                          width: MediaQuery.of(context).size.width * 0.30,
                          child: SvgPicture.asset("assets/images/stars-5.svg"),
                        ),
                      ):const SizedBox(),),

                      Obx(()=>controller.productDetailReviewModel.value.list1!=null && controller.productDetailReviewModel.value.list1!.isNotEmpty?
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15),
                        child: Row(
                          children: [
                            Text(
                              "5.0 ",
                              style: AppStyle.textStyleRobotoromanmedium14
                                  .copyWith(fontSize: getFontSize(18)),
                            ),
                            Text(
                              "/ 5 ",
                              style: AppStyle.textStyleAdventProregular124
                                  .copyWith(
                                  height: 1.5, fontSize: getFontSize(16)),
                            ),
                            const Icon(
                              Icons.circle,
                              size: 5,
                            ),
                            controller.productDetailReviewModel.value.list1!=null?
                            Text(
                              " ${controller.productDetailReviewModel.value.list1!.length.toString()} ",
                              style: AppStyle.textStyleRobotoromanmedium14
                                  .copyWith(fontSize: getFontSize(16)),
                            ):const SizedBox(),
                            Text(
                              "lbl_review".tr,
                              style: AppStyle.textStyleAdventProregular124
                                  .copyWith(
                                  height: 1.5, fontSize: getFontSize(16)),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.star,
                              color: Colors.green,
                              size: 18,
                            ),
                            Text("Trustpilot",
                                style: AppStyle.textStyleRobotoromanmedium14
                                    .copyWith(fontSize: getFontSize(16)))
                          ],
                        ),
                      ):const SizedBox(),),

                      Column(
                        children: [
                          controller.productDetailReviewModel.value.list1 !=null?
                          Obx(()=> ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.productDetailReviewModel.value.list1!.length,
                              itemBuilder: (BuildContext context, int index){
                                return Padding(
                                  padding: const EdgeInsets.only(
                                    left: 15,
                                    right: 15,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Obx(()=> Text(controller.productDetailReviewModel.value.list1![index].reviewAuthor.toString(),
                                              style: AppStyle.textStyleAdventProregular124
                                                  .copyWith(
                                                  height: 1.5,
                                                  fontSize: getFontSize(16))),),
                                          const Spacer(),
                                          Text(controller.productDetailReviewModel.value.list1![index].createdAt.toString(),
                                              style: AppStyle.textStyleAdventProregular124
                                                  .copyWith(
                                                  height: 1.5,
                                                  fontSize: getFontSize(16)))
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          controller.productDetailReviewModel.value.list1![index].ratingScore==5?
                                          Container(
                                              height: 20,
                                              width: MediaQuery.of(context).size.width *
                                                  0.30,
                                              child:
                                              SvgPicture.asset(
                                                  "assets/images/stars-5.svg")):
                                          controller.productDetailReviewModel.value.list1![index].ratingScore==4.5?
                                          Container(
                                              height: 20,
                                              width: MediaQuery.of(context).size.width *
                                                  0.30,
                                              child:
                                              SvgPicture.asset(
                                                  "assets/images/stars-4.5.svg")):
                                          controller.productDetailReviewModel.value.list1![index].ratingScore==4?
                                          Container(
                                              height: 20,
                                              width: MediaQuery.of(context).size.width *
                                                  0.30,
                                              child:
                                              SvgPicture.asset(
                                                  "assets/images/stars-4.svg")):
                                          controller.productDetailReviewModel.value.list1![index].ratingScore==3?
                                          Container(
                                              height: 20,
                                              width: MediaQuery.of(context).size.width *
                                                  0.30,
                                              child:
                                              SvgPicture.asset(
                                                  "assets/images/stars-3.svg")):
                                          controller.productDetailReviewModel.value.list1![index].ratingScore==2?
                                          Container(
                                              height: 20,
                                              width: MediaQuery.of(context).size.width *
                                                  0.30,
                                              child:
                                              SvgPicture.asset(
                                                  "assets/images/stars-2.svg")):
                                          controller.productDetailReviewModel.value.list1![index].ratingScore==1?
                                          Container(
                                              height: 20,
                                              width: MediaQuery.of(context).size.width * 0.30,
                                              child:
                                              SvgPicture.asset(
                                                  "assets/images/stars-1.svg")):const SizedBox()
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Align(
                                        alignment:Alignment.centerLeft,
                                        child: Text(controller.productDetailReviewModel.value.list1![index].reviewContent.toString(),
                                            style: AppStyle.textStyleAdventProregular16.copyWith(
                                                color: Colors.black,
                                                fontSize: getFontSize(14)
                                            )
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              })):const SizedBox(),
                        ],
                      ),

                      controller.productDetailRelatedProductModel.value
                          .list1 != null  &&
                          controller.productDetailRelatedProductModel.value
                              .list1!.length>0
                          ? const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Divider(
                          thickness: 1,
                        ),
                      ):const SizedBox(),
                      controller.productDetailRelatedProductModel.value
                          .list1 !=
                          null
                          && controller.productDetailRelatedProductModel.value
                          .list1!.length>0
                          ? Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 10),
                        child: Text('lbl_matching_product'.tr,
                            style: AppStyle.textStyleRobotoromanmedium14
                                .copyWith(fontSize: getFontSize(20))),
                      ):const SizedBox(),

                      Column(
                        children: [
                          controller.productDetailRelatedProductModel.value
                              .list1 !=
                              null
                              ? Obx(
                                () => ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: controller
                                    .productDetailRelatedProductModel
                                    .value
                                    .list1!
                                    .length,
                                itemBuilder:
                                    (BuildContext context, int index) {
                                  return Padding(
                                      padding:
                                      const EdgeInsets.only(left: 15.0),
                                      child:Obx(()=> InkWell(
                                        onTap: (){
                                          FocusScopeNode currentFocus = FocusScope.of(context);
                                          if (!currentFocus.hasPrimaryFocus) {
                                            currentFocus.unfocus();
                                          }
                                          // print("recent");
                                          // try{
                                          //   Get.find<PrefUtils>().setRecentProduct(controller.productDetailRelatedProductModel.value.list1![index].id.toString());
                                          // }catch(e){
                                          //   print("Exception-"+"Error list Data");
                                          //
                                          // }
                                          print("recent pro");
                                          controller.RelivantProductApiCall(controller.productDetailRelatedProductModel.value.list1![index].id.toString(),controller.productDetailRelatedProductModel.value.list1![index].manufacturerId.toString());
                                          // Get.toNamed(AppRoutes.productDetailScreen,
                                          //     arguments: {
                                          //       "productID":controller.productDetailRelatedProductModel.value.list1![index].id.toString(),
                                          //       "manufacturerID":controller.productDetailRelatedProductModel.value.list1![index].manufacturerId.toString()
                                          //     }
                                          // );
                                        },
                                        child: ProductCard(
                                          productImage: controller
                                              .productDetailRelatedProductModel
                                              .value
                                              .list1![index]
                                              .metaData!
                                              .image
                                              .toString(),
                                          imageHeight: controller
                                              .productDetailRelatedProductModel
                                              .value
                                              .list1![index]
                                              .metaData!
                                              .imageHeight,
                                          imageWidth: controller
                                              .productDetailRelatedProductModel
                                              .value
                                              .list1![index]
                                              .metaData!
                                              .imageWidth,
                                          productName: controller
                                              .productDetailRelatedProductModel
                                              .value
                                              .list1![index]
                                              .name,
                                          productPrice: controller
                                              .productDetailRelatedProductModel
                                              .value
                                              .list1![index]
                                              .price
                                              .toString(),
                                          productOfferPrice: controller
                                              .productDetailRelatedProductModel
                                              .value
                                              .list1![index]
                                              .oldPrice
                                              .toString(),
                                          featureHighlight1: controller
                                              .productDetailRelatedProductModel
                                              .value
                                              .list1![index]
                                              .featureHighlight1,
                                          featureHighlight2: controller
                                              .productDetailRelatedProductModel
                                              .value
                                              .list1![index]
                                              .featureHighlight2,
                                          featureHighlight3: controller
                                              .productDetailRelatedProductModel
                                              .value
                                              .list1![index]
                                              .featureHighlight3,
                                          featureHighlight4: controller
                                              .productDetailRelatedProductModel
                                              .value
                                              .list1![index]
                                              .featureHighlight4,
                                          stockIndicator: controller
                                              .productDetailRelatedProductModel
                                              .value
                                              .list1![index]
                                              .stockIndicator,
                                          stockIndicatorDescription: controller
                                              .productDetailRelatedProductModel
                                              .value
                                              .list1![index]
                                              .stockIndicatorDescription,
                                        ),
                                      ),)
                                  );
                                }),
                          )
                              : const SizedBox(),
                        ],
                      ),

                      controller.productDetailBundleModel.value.list1 != null &&
                          controller.productDetailBundleModel.value.list1!.length>0
                          ?Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 10),
                        key: _keyCombiDeal,
                        child: Text("lbl_combi_deal".tr,
                            style: AppStyle.textStyleRobotoromanmedium14
                                .copyWith(fontSize: getFontSize(20))),
                      ):const SizedBox(),
                      controller.productDetailBundleModel.value.list1 != null
                          ? Obx(
                            () => Column(
                          children: [
                            ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: controller
                                    .productDetailBundleModel
                                    .value
                                    .list1!
                                    .length,
                                itemBuilder:
                                    (BuildContext context, int index) {
                                  return controller.productDetailModel
                                      .value.images !=
                                      null
                                      ? Obx(
                                        () => Column(
                                      children: [
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(
                                              left: 15.0),
                                          child: ProductCard(
                                            productName: controller
                                                .productDetailModel
                                                .value
                                                .name
                                                .toString(),
                                            productPrice: controller
                                                .productDetailModel
                                                .value
                                                .price
                                                .toString(),
                                            productImage: controller
                                                .productDetailModel
                                                .value
                                                .images![0],
                                            combiDeal: true,
                                            // imageHeight: controller.productDetailAlsoBoughtModel.value.list1![index].metaData!.imageHeight,
                                            // imageWidth: controller.productDetailAlsoBoughtModel.value.list1![index].metaData!.imageWidth,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            controller.loading
                                                .value ==
                                                true
                                                ? const SizedBox()
                                                : Obx(() => ListView
                                                .builder(
                                                shrinkWrap:
                                                true,
                                                physics:
                                                const NeverScrollableScrollPhysics(),
                                                itemCount: controller
                                                    .productCount
                                                    .value,
                                                itemBuilder:
                                                    (BuildContext
                                                context,
                                                    int i) {
                                                  return Padding(
                                                      padding: const EdgeInsets.only(
                                                          left:
                                                          15.0,
                                                          right:
                                                          15),
                                                      child:
                                                      GestureDetector(
                                                        onTap: (){
                                                          if(checkbox.value==true){
                                                            checkbox.value=false;
                                                          }
                                                        },
                                                        child: GestureDetector(
                                                          onTap:  () {
                                                            controller.productDetailBundleModel.value.list1![index].products![i].checkbox!.value == true
                                                                ?
                                                            controller.productDetailBundleModel.value.list1![index].products![i].checkbox!.value = false
                                                                : controller.productDetailBundleModel.value.list1![index].products![i].checkbox!.value =true;
                                                          },
                                                          child:Obx(()=> CombiDealCard(
                                                            productImage: controller.productDetailBundleModel.value.list1![index].products![i].metaData!.image.toString(),
                                                            imageHeight: controller.productDetailBundleModel.value.list1![index].products![i].metaData!.imageHeight,
                                                            imageWidth: controller.productDetailBundleModel.value.list1![index].products![i].metaData!.imageWidth,
                                                            productName: controller.productDetailBundleModel.value.list1![index].products![i].name,
                                                            offerLabel: controller.productDetailBundleModel.value.list1![index].products![i].customLabel![0].label,
                                                            productPrice: controller.productDetailBundleModel.value.list1![index].products![i].price.toString(),
                                                            productOfferPrice: controller.productDetailBundleModel.value.list1![index].products![i].oldPrice.toString(),
                                                            checkbox: controller.productDetailBundleModel.value.list1![index].products![i].checkbox!.value,
                                                          ),),
                                                        ),)
                                                  );
                                                })),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(
                                              left: 15.0,
                                              right: 15),
                                          child: Column(
                                            children: [
                                              Text(
                                                "msg_makse_use_of_this".tr,
                                                maxLines: 4,
                                              ),
                                              Row(
                                                children: [
                                                  Obx(
                                                        () => Text(
                                                      controller.productDetailModel.value.name.toString(),
                                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .end,
                                                children: [
                                                  Obx(()=> Text(
                                                    "\u{20AC} " +
                                                        controller
                                                            .cartCalculation(
                                                          controller.productDetailModel.value.price.toString(),
                                                          controller.productDetailBundleModel.value.list1![index].products!,

                                                        ).toString(),
                                                    style: const TextStyle(
                                                        fontWeight:
                                                        FontWeight
                                                            .bold),)),
                                                  // ),) Obx(()=> Text(
                                                  //   "\u{20AC} " +
                                                  //       controller
                                                  //           .combiList[index]
                                                  //           .toStringAsPrecision(
                                                  //               4),
                                                  //   style: TextStyle(
                                                  //       fontWeight:
                                                  //           FontWeight
                                                  //               .bold),
                                                  // ),
                                                  // )
                                                ],
                                              ),

                                            ],
                                          ),
                                        ),
                                        Container(
                                            height: 50,
                                            child: Padding(
                                              padding:
                                              const EdgeInsets.only(left: 15.0, right: 15, bottom: 10),
                                              child: ElevatedButton(
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .center,
                                                  children: [
                                                    Text(
                                                        'lbl_add_to_cart'.tr,
                                                        style: AppStyle.textStyleRobotoromanmedium14.copyWith(fontSize: getFontSize(18,), color: Colors.white)
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        carouselController.previousPage();
                                                      },
                                                      child: const Icon(
                                                        Icons.shopping_cart_outlined,
                                                        size: 19,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                onPressed: () {},
                                                style:
                                                ElevatedButton
                                                    .styleFrom(
                                                  backgroundColor:
                                                  const Color(
                                                      0xff208836),
                                                ),
                                              ),
                                            )),
                                      ],
                                    ),
                                  )
                                      : const SizedBox();
                                }),
                          ],
                        ),
                      )
                          : const SizedBox(),

                      const Padding(
                        padding: EdgeInsets.all(15),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 0),
                        child: Text('lbl_other_also_boug'.tr,
                            style: AppStyle.textStyleRobotoromanmedium14
                                .copyWith(fontSize: getFontSize(20))),
                      ),
                      Column(
                        children: [
                          controller.productDetailAlsoBoughtModel.value.list1 !=
                              null
                              ? Obx(
                                () => ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: controller.productDetailAlsoBoughtModel.value.list1!.length,
                                itemBuilder:
                                    (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15),
                                    child: GestureDetector(
                                      onTap: (){
                                        print("Id : "+controller.productDetailAlsoBoughtModel.value.list1![index].id.toString());


                                        // try{
                                        //   Get.find<PrefUtils>().setRecentProduct(controller.productDetailAlsoBoughtModel.value.list1![index].id.toString());
                                        // }catch(e){
                                        //   print("Exception-"+"Error list Data");
                                        //
                                        // }
                                        controller.RelivantProductApiCall(controller.productDetailAlsoBoughtModel.value.list1![index].id.toString(), controller.productDetailAlsoBoughtModel.value.list1![index].manufacturerId.toString());
                                        //   Get.back();
                                        // Get.toNamed(AppRoutes.productDetailScreen,
                                        //     arguments: {
                                        //       "productID":controller.productDetailAlsoBoughtModel.value.list1![index].id.toString(),
                                        //       "manufacturerID":controller.productDetailAlsoBoughtModel.value.list1![index].manufacturerId.toString()
                                      },
                                      child: ProductCard(
                                        productName: controller
                                            .productDetailAlsoBoughtModel
                                            .value
                                            .list1![index]
                                            .name,
                                        productImage: controller
                                            .productDetailAlsoBoughtModel
                                            .value
                                            .list1![index]
                                            .metaData!
                                            .image
                                            .toString(),
                                        imageHeight: controller
                                            .productDetailAlsoBoughtModel
                                            .value
                                            .list1![index]
                                            .metaData!
                                            .imageHeight,
                                        imageWidth: controller
                                            .productDetailAlsoBoughtModel
                                            .value
                                            .list1![index]
                                            .metaData!
                                            .imageWidth,
                                        productPrice: controller
                                            .productDetailAlsoBoughtModel
                                            .value
                                            .list1![index]
                                            .price
                                            .toString(),
                                        productOfferPrice: controller
                                            .productDetailAlsoBoughtModel
                                            .value
                                            .list1![index]
                                            .oldPrice
                                            .toString(),
                                        featureHighlight1: controller
                                            .productDetailAlsoBoughtModel
                                            .value
                                            .list1![index]
                                            .featureHighlight1,
                                        featureHighlight2: controller
                                            .productDetailAlsoBoughtModel
                                            .value
                                            .list1![index]
                                            .featureHighlight2,
                                        featureHighlight3: controller
                                            .productDetailAlsoBoughtModel
                                            .value
                                            .list1![index]
                                            .featureHighlight3,
                                        featureHighlight4: controller
                                            .productDetailAlsoBoughtModel
                                            .value
                                            .list1![index]
                                            .featureHighlight4,
                                        stockIndicator: controller
                                            .productDetailAlsoBoughtModel
                                            .value
                                            .list1![index]
                                            .stockIndicator,
                                        stockIndicatorDescription: controller
                                            .productDetailAlsoBoughtModel
                                            .value
                                            .list1![index]
                                            .stockIndicatorDescription,
                                      ),
                                    ),
                                  );
                                }),
                          )
                              : const SizedBox(),
                        ],
                      ),

                      // recent product last viewed
                      controller.productModelData!.value.list1 != null?
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 10),
                        child: Text("lbl_last_view".tr,
                            style: AppStyle.textStyleRobotoromanmedium14
                                .copyWith(fontSize: getFontSize(20))),
                      ):const SizedBox(),
                      Column(
                        children: [
                          controller.productModelData!.value.list1 !=
                              null
                              ? Obx(
                                () => ListView.builder(
                                reverse: true,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount:controller.productModelData!.value.list1!.length,
                                itemBuilder:
                                    (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15),
                                    child: GestureDetector(
                                      onTap: (){
                                        print("Id : "+controller.productModelData!.value.list1![index].id.toString());

                                        controller.RelivantProductApiCall(controller.productModelData!.value.list1![index].id.toString(), controller.productModelData!.value.list1![index].manufacturerId.toString());
                                        //   Get.back();
                                        // Get.toNamed(AppRoutes.productDetailScreen,
                                        //     arguments: {
                                        //       "productID":controller.productDetailAlsoBoughtModel.value.list1![index].id.toString(),
                                        //       "manufacturerID":controller.productDetailAlsoBoughtModel.value.list1![index].manufacturerId.toString()
                                      },
                                      child: ProductCard(
                                        productName: controller
                                            .productModelData!
                                            .value
                                            .list1![index]
                                            .name,
                                        productImage: controller
                                            .productModelData!
                                            .value
                                            .list1![index]
                                            .metaData!
                                            .image
                                            .toString(),
                                        imageHeight: controller
                                            .productModelData!
                                            .value
                                            .list1![index]
                                            .metaData!
                                            .imageHeight,
                                        imageWidth: controller
                                            .productModelData!
                                            .value
                                            .list1![index]
                                            .metaData!
                                            .imageWidth,
                                        productPrice: controller
                                            .productModelData!
                                            .value
                                            .list1![index]
                                            .price
                                            .toString(),
                                        productOfferPrice: controller
                                            .productModelData!
                                            .value
                                            .list1![index]
                                            .oldPrice
                                            .toString(),

                                        stockIndicator: controller
                                            .productModelData!
                                            .value
                                            .list1![index]
                                            .stockIndicator,
                                        stockIndicatorDescription: controller
                                            .productModelData!
                                            .value
                                            .list1![index]
                                            .stockIndicatorDescription,
                                      ),
                                    ),
                                  );
                                }),
                          )
                              : const SizedBox(),
                        ],
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      Container(
                        height: 120,
                        child: Obx(() =>
                            SponcerCarousel(controller.manufacturerImage)),
                      ),

                      FotterClass()

                    ],
                  )),
                  ),
                ))));
  }

  List<Widget> indicators(imagesLength, currentIndex) {
    print("image length" + imagesLength.toString());
    print("image current Index" + currentIndex.toString());
    return List<Widget>.generate(imagesLength, (index) {
      return Obx(() => Container(
        margin: const EdgeInsets.all(3),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
              color: currentIndex == index ? ColorConstant.appPrimaryColor : Colors.transparent,
              width: 2
          ),
        ),
        child: Container(
            height: 45,
            width: 45,
            // child: Image.network("${APPURL.imageBaseUrl}" + controller.productDetailModel.value.images![index], fit: BoxFit.fill,),
            child : CachedNetworkImage(
              imageUrl: APPURL.imageBaseUrl + controller.productDetailModel.value.images![index],
              placeholder: (context, url) => SizedBox(height:30,width:30,child: SpinKitCircle(color: ColorConstant.appPrimaryColor,size: 30,)),
              errorWidget: (context, url, error) => SizedBox(height:50,width:50,child: Image.asset("assets/images/icon-152x152.png")),
            )
        ),
      ));
    });
  }
}

class Specification extends StatelessWidget {
  String? SpecificationKey;
  String? value;

  Specification({Key? key, this.SpecificationKey, this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15),
      child: Column(
        children: [
          Container(
            color: Colors.blueGrey[50],
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.30,
                  child: const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text("Diameter"),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.60,
                  child: const Padding(
                    padding: EdgeInsets.all(5.0),
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
                  width: MediaQuery.of(context).size.width * 0.30,
                  child: const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text("Hoogte"),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.60,
                  child: const Padding(
                    padding: EdgeInsets.all(5.0),
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
                  width: MediaQuery.of(context).size.width * 0.30,
                  child: const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text("Capaciteit"),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.60,
                  child: const Padding(
                    padding: EdgeInsets.all(5.0),
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
