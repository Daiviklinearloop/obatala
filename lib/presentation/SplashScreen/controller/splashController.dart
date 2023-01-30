
import 'dart:async';
import 'package:get/get.dart';
import 'package:obatala/routes/app_routes.dart';

class SplashController extends GetxController with StateMixin<dynamic> {


  @override
  void onInit() {

    Timer(Duration(seconds:3), () {
      navigateUser();
    });
    super.onInit();
  }


  @override
  void onReady() {
    super.onReady();
    Timer(Duration(seconds:3), () {
      navigateUser();
    });
  }

  navigateUser() {
    print("home page");
    Get.offAllNamed(AppRoutes.homePage);
  }

  @override
  void onClose() {
    super.onClose();
  }

}
