import 'package:get/get.dart';
import 'package:obatala/core/utils/pref_utils.dart';

class InitialBindings extends Bindings {
@override
  void dependencies(){
  Get.put(PrefUtils());
  }
}