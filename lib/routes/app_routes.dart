import 'package:get/get.dart';
import 'package:obatala/presentation/Dashboard/Category/Binding/category_binding.dart';
import 'package:obatala/presentation/Dashboard/HomePage.dart';
import 'package:obatala/presentation/ProductDetailScreen/Binding/productDetailBinding.dart';
import 'package:obatala/presentation/ProductDetailScreen/product_detail_screen.dart';
import 'package:obatala/presentation/Product_List/Binding/product_list_binding.dart';
import 'package:obatala/presentation/Product_List/filterPage.dart';
import 'package:obatala/presentation/Product_List/productListPage.dart';
class AppRoutes{
static String homePage= '/HomePage';
static String productList='/productListPage';
static String productDetailScreen='/product_detail_screen';
static String filterPage ='/filterPage';


static List<GetPage> page=[
GetPage(name: homePage,
    page: () => HomePage(),
    bindings: [
        CategoryBinding()
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


  GetPage(name: filterPage,
      page: ()=> FilterPage(),

  )
];
}