import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:obatala/core/utils/color_constant.dart';
import 'package:obatala/presentation/ZoomImageSlider/controller/zoomImageController.dart';
import 'package:photo_view/photo_view.dart';

import '../../core/utils/app_url.dart';
import '../../core/utils/math_utils.dart';
import '../../theme/app_style.dart';

class ZoomImageScreen extends StatelessWidget {
  ZoomImageScreen({Key? key}) : super(key: key);

  ZoomImageController controller = Get.find();
  CarouselController carouselController = CarouselController();
  //RxInt activePage = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Stack(
            children: [

              Center(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Obx (() => CarouselSlider(
                      carouselController: carouselController,
                      // Give the controller
                      options: CarouselOptions(
                          viewportFraction: 1,
                          initialPage: controller.activePage.value,
                          onPageChanged: (int page, cs) {
                            controller.activePage.value = page;
                          }),
                      items: [
                        ...controller.imageList.value
                            .map((title) => Hero(
                          tag: "pro",
                          child: CachedNetworkImage(
                          imageUrl: "${APPURL.imageBaseUrl}" + title,
                          imageBuilder: (context, imageProvider) => PhotoView(
                              minScale: PhotoViewComputedScale.contained,
                              backgroundDecoration: BoxDecoration(
                                color: Colors.white
                              ),
                              imageProvider: imageProvider,
                          ),
                          placeholder: (context, url) => SizedBox(height:50,width:50,child: SpinKitCircle(color: ColorConstant.appPrimaryColor,)),
                          errorWidget: (context, url, error) => SizedBox(height:50,width:50,child: Image.asset("assets/images/icon-152x152.png")),
                        ),
                            )
                        )])
                  ) ,
                ),
              ),

              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(top: 80,left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      controller.productName.value != null && controller.productName.value != ""
                          ?
                      Container(
                        child: Obx(
                              () => Text(
                              controller.productName.value.toString(),
                              maxLines: 2,
                              style: AppStyle.textStyleRobotoromanmedium14
                                  .copyWith(fontSize: getFontSize(18))),
                        ),
                      )
                          :
                      SizedBox(),

                      controller.manufacturerImage.value.toString() != "null" && controller.manufacturerImage.value.toString() != ""
                          ?
                      Container(
                        height: 50,
                        width: 100,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 15),
                        child: controller.manufacturerImage.value.toString().toLowerCase().contains(".svg")
                              ?
                          SvgPicture.network(APPURL.imageBaseUrl+controller.manufacturerImage.value.toString())
                            :
                          Image.network(APPURL.imageBaseUrl+controller.manufacturerImage.value.toString()),
                      )
                          :
                      SizedBox(),
                    ],
                  ),
                ),
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    carouselController.previousPage();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),

              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    carouselController.nextPage();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),

              Obx(() => Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0,bottom: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: indicators(controller.imageList.value.length, controller.activePage.value
                      )
                  ),
                ),
              )),

              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                        border: Border.all(color: Colors.black)
                    ),
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }

  List<Widget> indicators(imagesLength, currentIndex) {
    print("image length" + imagesLength.toString());
    print("image current Index" + currentIndex.toString());
    return List<Widget>.generate(imagesLength, (index) {
      return Obx(() => Container(
        margin: EdgeInsets.all(3),
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
          //child: Image.network("${APPURL.imageBaseUrl}" + controller.imageList.value[index], fit: BoxFit.fill,),
            child : CachedNetworkImage(
              imageUrl: APPURL.imageBaseUrl + controller.imageList.value[index],
              placeholder: (context, url) => SizedBox(height:50,width:50,child: SpinKitCircle(color: ColorConstant.appPrimaryColor,)),
              errorWidget: (context, url, error) => SizedBox(height:50,width:50,child: Image.asset("assets/images/icon-152x152.png")),
            )
        ),
      ));
    });
  }
}
