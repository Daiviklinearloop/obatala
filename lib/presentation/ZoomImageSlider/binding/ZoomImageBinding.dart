
import 'package:get/get.dart';
import 'package:obatala/presentation/ZoomImageSlider/controller/zoomImageController.dart';

class ZoomImageBinding extends Bindings {
  @override
  void dependencies() {
    Get.delete<ZoomImageController>();
    Get.lazyPut(() => ZoomImageController());
  }
}