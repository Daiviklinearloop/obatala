import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obatala/localization/app_localization.dart';
import 'package:obatala/routes/app_routes.dart';
import 'core/utils/initial_binding.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(milliseconds: 300));
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Obatala',
      translations: AppLocalization(),
      locale: Get.deviceLocale, //for setting localization strings
      fallbackLocale: Locale('en', 'US'),
      initialRoute: AppRoutes.splashScreen,
      getPages: AppRoutes.page,
      initialBinding: InitialBindings(),
    );
  }
}