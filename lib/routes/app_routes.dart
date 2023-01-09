import 'package:get/get.dart';
import 'package:obatala/presentation/HomePage.dart';
class AppRoutes{
static String homePage= '/HomePage';


static List<GetPage> page=[
GetPage(name: homePage,
    page: () => HomePage(),
)
];
}