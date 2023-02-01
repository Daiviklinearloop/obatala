import 'package:get/get.dart';
import 'package:obatala/presentation/Dashboard/Category/Controller/category_controller.dart';

class CategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => CategoryController());
  }
}
