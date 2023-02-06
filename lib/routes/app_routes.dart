import 'package:get/get.dart';
import 'package:obatala/presentation/Dashboard/HomePage.dart';
import 'package:obatala/presentation/ProductDetailScreen/Binding/productDetailBinding.dart';
import 'package:obatala/presentation/ProductDetailScreen/product_detail_screen.dart';
import 'package:obatala/presentation/Product_List/Binding/product_list_binding.dart';
import 'package:obatala/presentation/Product_List/filterPage.dart';
import 'package:obatala/presentation/Product_List/productListPage.dart';
import 'package:obatala/presentation/SplashScreen/SplashScreen.dart';
import 'package:obatala/presentation/SplashScreen/binding/SplashBinding.dart';
import 'package:obatala/presentation/ZoomImageSlider/binding/ZoomImageBinding.dart';

import '../presentation/ZoomImageSlider/ZoomImageScreen.dart';
class AppRoutes{
  static String homePage= '/HomePage';
  static String productList='/productListPage';
  static String productDetailScreen='/product_detail_screen';
  static String filterPage ='/filterPage';
  static String splashScreen ='/SplashScreen';
  static String zoomImageScreen ='/ZoomImageScreen';

  static List<GetPage> page=[

    GetPage(name: homePage,
        page: () => HomePage(),
        bindings: [
          // CategoryBinding()
        ]
    ),

    GetPage(name: splashScreen,
        page: () => SplashScreen1Screen(),
        bindings: [
          SplashBinding()
        ]
    ),

    GetPage(name: productList,
        page: ()=>ProductListPage(),
        bindings: [
          ProductListBinding()
        ]
    ),

    GetPage(name: productDetailScreen,
        page: () => ProductDetailsPage(),
        bindings: [
          ProductDetailBinding()
        ]
    ),

    GetPage(name: zoomImageScreen,
        page: () => ZoomImageScreen(),
        bindings: [
          ZoomImageBinding()
        ]
    ),

    GetPage(name: filterPage,
      page: ()=> FilterPage(),
    )
  ];
}