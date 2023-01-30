import 'package:get/get.dart';
import 'package:obatala/presentation/SplashScreen/controller/splashController.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}