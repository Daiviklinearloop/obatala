import 'package:get/get.dart';
import 'package:obatala/presentation/Product_List/Controller/product_list_controller.dart';

class ProductListBinding extends Bindings {
  @override
  void dependencies() {
    Get.delete<ProductListController>();
    Get.lazyPut(() => ProductListController());
  }
}