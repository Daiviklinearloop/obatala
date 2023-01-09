import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obatala/routes/app_routes.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Obatala',
      initialRoute: AppRoutes.homePage,
      getPages: AppRoutes.page,


    );
  }
}
