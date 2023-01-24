import 'package:get/get.dart';
import 'package:obatala/presentation/ProductDetailScreen/Controller/productDetailController.dart';

class ProductDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductDetailController());
  }
}
