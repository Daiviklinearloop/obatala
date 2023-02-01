
import 'package:get/get.dart';

class ZoomImageController extends GetxController with StateMixin<dynamic> {

  RxList imageList = [].obs;
  RxInt activePage = 0.obs;
  RxString manufacturerImage = "".obs;
  RxString productName = "".obs;

  @override
  void onInit() {

    if (Get.arguments != null) {
      imageList.value = Get.arguments['product_images'];
      activePage.value = Get.arguments['current_pos'];
      manufacturerImage.value = Get.arguments['manufacturer_image'];
      productName.value = Get.arguments['product_name'];
      print("imageList => ${imageList.value}");
      print("imageList activePage => ${activePage.value}");
      print("imageList manufacturerImage => ${manufacturerImage.value}");
      print("imageList productName => ${productName.value}");
    }

    super.onInit();
  }

}