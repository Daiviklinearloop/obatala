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

//
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// void main(){
//   runApp(App1());
// }
//
// class App1 extends StatefulWidget {
//   const App1({Key? key}) : super(key: key);
//
//   @override
//   State<App1> createState() => _App1State();
// }
//
// class _App1State extends State<App1> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Home(),
//     );
//   }
// }
//
//
//
// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// final featuredImages = [
//   "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
//   "https://wallpaperaccess.com/full/2637581.jpg",
//   "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
// ];
// CarouselController carouselController = CarouselController();
// RxInt activePage = 0.obs;
//
//
// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body:  Column(
//           children: [
//             Padding(
//             padding: EdgeInsets.only(
//             top: 85,
//     ),
//     child: SizedBox(
//     width: MediaQuery.of(context).size.width,
//     height: 200,
//     child: Stack(
//     children: [
//     CarouselSlider(
//     carouselController: carouselController,
//       // Give the controller
//
//     options: CarouselOptions(
//       viewportFraction: 1,
//       initialPage: 0,
//       onPageChanged: (int page,cs){
//         activePage.value=page;
//       }
//
//     ),
//
//
//               items: featuredImages.map((featuredImage) {
//                 return Image.network("https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",);
//                 }).toList(),
//               ),
//                                Align(
//                                  alignment: Alignment.centerLeft,
//                                  child: GestureDetector(
//                                    onTap: (){
//                                      carouselController.previousPage();
//                                    },
//                                    child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.grey,),
//                                  ),
//                                ),
//       Align(
//         alignment: Alignment.centerRight,
//         child: GestureDetector(
//           onTap: (){
//             carouselController.nextPage();
//           },
//           child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,),
//         ),
//       ),
//     ],
//     ),
//     ),),
//
//             Obx(()=>  Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: indicators(featuredImages.length,activePage)))
//           ],
//         )
//
//     );
//   }
//
//   List<Widget> indicators(imagesLength, currentIndex) {
//     print("image length"+imagesLength.toString());
//     print("image current Index"+currentIndex.toString());
//     return List<Widget>.generate(imagesLength, (index) {
//       return Container(
//         margin: EdgeInsets.all(3),
//         width: 50,
//         height: 50,
//         decoration: BoxDecoration(
//             color: currentIndex == index ? Colors.black : Colors.black26,
//             // shape: BoxShape.circle
//         ),
//         child: Container(
//           height: 45,
//           width: 45,
//
//           child: Image.network(  "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg",
//
//             fit: BoxFit.contain,
//           ),
//         ),
//       );
//     });
//
//   }
// }



