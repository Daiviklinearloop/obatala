import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'package:obatala/core/utils/app_url.dart';
import 'package:obatala/core/utils/pref_utils.dart';
import 'package:obatala/presentation/Dashboard/Category/Model/ProductModel.dart';
import 'package:obatala/presentation/Dashboard/Category/Model/manufacturer_model.dart';
import 'package:obatala/presentation/ProductDetailScreen/Model/manufactureIdModel.dart';
import 'package:obatala/presentation/ProductDetailScreen/Model/productDetailReview.dart';
import 'package:obatala/presentation/ProductDetailScreen/Model/product_detail_alsoBought_model.dart';
import 'package:obatala/presentation/ProductDetailScreen/Model/product_detail_bundle_model.dart';
import 'dart:convert';

import 'package:obatala/presentation/ProductDetailScreen/Model/product_detail_model.dart';
import 'package:obatala/presentation/ProductDetailScreen/Model/product_detail_related_product_model.dart';

import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';

class ProductDetailController extends GetxController with StateMixin<dynamic> {

  Rx<ProductDetailModel> productDetailModel= ProductDetailModel().obs;
  Rx<ProductDetailRelatedProductModel> productDetailRelatedProductModel= ProductDetailRelatedProductModel().obs;
  Rx<ProductDetailBundleModel> productDetailBundleModel= ProductDetailBundleModel().obs;
  Rx<ProductDetailAlsoBoughtModel> productDetailAlsoBoughtModel= ProductDetailAlsoBoughtModel().obs;
  Rx<ManufacturerIdModel> manufacturerIdModel= ManufacturerIdModel().obs;
  Rx<ProductDetailReviewModel> productDetailReviewModel= ProductDetailReviewModel().obs;
  RxBool loading =false.obs;
  dynamic argumentData = Get.arguments;
  RxString? productId=''.obs;
  RxString? manufacturerId=''.obs;
  RxList<dynamic> manufacturerImage=[].obs;
  Rx<ManufacturerModel>? manufacturerModel = ManufacturerModel().obs;
  RxInt productCount=0.obs;
  RxString  combiDealTotal="".obs;
  RxDouble combiDeal=0.0.obs;
  RxDouble a=0.0.obs;
  RxDouble DealPrice=0.0.obs;
  RxDouble ProductActualPrice=0.0.obs;
  RxList combi=[].obs;
  RxDouble combiTotal=0.0.obs;
  RxList combiList=[].obs;
  // RxList<dynamic> recent=[].obs;
  Rx<ProductModel>? productModelData = ProductModel().obs;
  var _dio = Dio();

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    if (argumentData != null) {
      productId!.value=argumentData['productID'];
      manufacturerId!.value=argumentData['manufacturerID'];
      print("Product Id " +productId.toString());
      print("Manufacturer Id " +manufacturerId.toString());

    }


    allAPICall();
  }


  Future<void> RelivantProductApiCall(String proID, String manufactureID) async {
    productId!.value=proID;
    manufacturerId!.value=manufactureID;
    allAPICall();
  }

  Future<void> allAPICall() async {
    _dio.interceptors.add(DioCacheManager(CacheConfig(baseUrl: APPURL.baseUrl)).interceptor);
    ProductDetailApiCall();
    ProductDetailRelatedProductApiCall();
    ProductDetailBundleApiCall();
    ProductDetailAlsoBoughtApiCall();
    ManufacturerApiCall();
    ManufacturerIDApiCall();
    ProductDetailReviewApiCall();

    print("recent");
    try{
      Get.find<PrefUtils>().setRecentProduct(productId!.value.toString());
    }catch(e){
      print("Exception-"+"Error list Data");
    }
    print("recent pro");
    ProductRecentApiCall();
    notifyChildrens();
  }

String cartCalculation(String price, List<Products> products, ){
    double totalPrice=0.0;
    print("total price"+price.toString());
     totalPrice=totalPrice+double.parse(price.toString());
     if(products !=null && products.length>0){
       for (var i=0; i<products.length;i++){
         if(products[i].checkbox!.value==true){
           if(products[i].price !=null && products[i].price !=""){
             totalPrice=totalPrice+double.parse(products[i].price.toString()); }
         }
       }
     }

    return totalPrice.toStringAsFixed(2);
}

  Future ProductRecentApiCall() async{
    loading.value=true;

    var recent=(await Get.find<PrefUtils>().getRecentProduct())!;
    print("recent product"+recent.toString());


    print("loading"+loading.toString());
    print("product API ");
    final response = await http.post(
      Uri.parse(APPURL.product),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },

      body: jsonEncode(<String, dynamic>{
        "productsId": recent
      }),
    );
    if (response.statusCode == 200) {
      print("loading"+loading.toString());
      print("response product recent --: "+response.body);

      productModelData!.value = ProductModel.fromJson(jsonDecode(response.body));
      // final responceData = json.decode(response.body);
      print("loading"+loading.toString());
      loading.value=false;
      print("Api model data collected");
    }else
    {
      loading.value=false;

      print("error- product recent"+response.body.toString());
      Map<String, dynamic> error = jsonDecode(response.body);
      Fluttertoast.showToast(
          msg: error["message"],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 12.0);
    }

  }


  Future ProductDetailApiCall() async{
    loading.value=true;
    print("Product Detail product ID ${APPURL.productDetail +productId.toString()}");

    // recent.value=(await Get.find<PrefUtils>().getRecentProduct())!;
    // print("recent product"+recent.value.toString());

    // final response = await http.get(
    //   Uri.parse(APPURL.productDetail +productId.toString(),),
    //   headers: <String, String>{
    //     'Content-Type': 'application/json; charset=UTF-8',
    //   },
    //
    //   // body: jsonEncode(<String, dynamic>{
    //   // })
    // );

    final response = await _dio.get(APPURL.productDetail +productId.toString(), options: buildCacheOptions(
      Duration(days: 7), //duration of cache
      forceRefresh: true
      //500, 500 happens, it will return cache
    ));

   // loading.value=false;

    //var response = dio.interceptors.add(DioCacheManager(CacheConfig(baseUrl: "http://www.google.com")).interceptor);;

    print("Api Called Product Detail");

    if (response.statusCode == 200) {
      print("response product Detail --:"+response.toString());
      productDetailModel.value = ProductDetailModel.fromJson(response.data);
      // // final responceData = json.decode(response.body);
      ProductActualPrice.value=double.parse(productDetailModel.value.price.toString());
      Timer(Duration(milliseconds:250), () {
        loading.value=false;
      });
      print("Api model data collected");
      // print("length "+ categoryModelData.list1!.length.toString());
      // print("list "+ categoryModelData.list1![2].toString());




    }else
    {    loading.value=false;

    print("error- productDetail Controller"+response.data.toString());
      Map<String, dynamic> error = jsonDecode(response.data.toString());
      Fluttertoast.showToast(
          msg: error["message"],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 12.0);
    }

  }



  Future ProductDetailRelatedProductApiCall() async{
    print("Product Detail product ID ${APPURL.productDetail +productId.toString()}");
    loading.value=true;

    // final response = await http.get(
    //   Uri.parse(APPURL.productDetailRelatedProduct +productId.toString()+'/relatedProduct'
    //   ),
    //   headers: <String, String>{
    //     'Content-Type': 'application/json; charset=UTF-8',
    //   },
    //
    //   // body: jsonEncode(<String, dynamic>{
    //   // })
    // );

    final response = await _dio.get(APPURL.productDetailRelatedProduct +productId.toString()+'/relatedProduct', options: buildCacheOptions(
        Duration(days: 7), //duration of cache
        forceRefresh: true
      //500, 500 happens, it will return cache
    ));

    //loading.value = false;

    print("Api Called Product Detail related Product ");

    if (response.statusCode == 200) {

      print("response product Detail Related Product  --:"+response.data.toString());
      productDetailRelatedProductModel.value =await ProductDetailRelatedProductModel.fromJson(response.data);
      // // final responceData = json.decode(response.body);
      Timer(Duration(milliseconds:250), () {
        loading.value=false;
      });

      print("Api model data collected");
      // print("length "+ categoryModelData.list1!.length.toString());
      // print("list "+ categoryModelData.list1![2].toString());

    }else {

      Timer(Duration(milliseconds:250), () {
        loading.value=false;
      });


    print("error- productDetail Controller"+response.data.toString());
      Map<String, dynamic> error = jsonDecode(response.data);
      Fluttertoast.showToast(
          msg: error["message"],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 12.0);
    }

  }



  Future ProductDetailBundleApiCall() async{
    loading.value=true;
    print("Product Detail bundle product ID ${APPURL.productDetail +productId.toString()+"/bundle"}");

    // final response = await http.get(
    //   Uri.parse(APPURL.productDetail +productId.toString()+'/bundle'
    //   ),
    //   headers: <String, String>{
    //     'Content-Type': 'application/json; charset=UTF-8',
    //   },
    //   // body: jsonEncode(<String, dynamic>{
    //   // })
    // );

    final response = await _dio.get(APPURL.productDetail +productId.toString()+'/bundle', options: buildCacheOptions(
        Duration(days: 7), //duration of cache
        forceRefresh: true
      //500, 500 happens, it will return cache
    ));

    //loading.value=false;

    print("Api Called Product Detail");

    if (response.statusCode == 200) {
      print("response product Detail Bundle --:"+response.data.toString());
      productDetailBundleModel.value =await ProductDetailBundleModel.fromJson(response.data);
      Timer(Duration(milliseconds:250), () {
        loading.value=false;
      });
      print("Api model data collected");



      for( var i =0; i<=productDetailBundleModel.value.list1!.length-1;i++){
        productCount.value =productDetailBundleModel.value.list1![i].products!.length;
        // print("Product Count"+productCount.toString());
        // print("product List count"+productDetailBundleModel.value.list1!.length.toString());


        for( var j =0; j<=productCount.value-1;j++){
          combiDealTotal.value=productDetailBundleModel.value.list1![i].products![j].price;
          combi.value.add(combiDealTotal.value);

          // print("Combi Deal "+combi.toString());
          // print("Combi Deal total"+combiDeal.toString());
        }
        combi.value.forEach((element) {combiDeal.value += double.parse(element.toString()); });
        // print("Combi Deal "+combi.toString());
        // print("Combi Deal total"+combiDeal.toString());

        combiTotal.value=double.parse(combiDeal.toString())+double.parse(ProductActualPrice.toString());
        combiList.value.add(combiTotal.value);
        // print("combi list"+combiList.toString());
        // print("total price"+combiTotal.toString());

        combi.clear();
        combiDeal.value=0.0;
        // print("Product Actual"+ProductActualPrice.toString());

      };
      // print("length "+ categoryModelData.list1!.length.toString());
      // print("list "+ categoryModelData.list1![2].toString());
    }else
    {
      print("error- productDetailBundle Controller"+response.data.toString());
      Map<String, dynamic> error = jsonDecode(response.data);
      Fluttertoast.showToast(
          msg: error["message"],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 12.0);
    }

  }

  Future ProductDetailReviewApiCall() async{
    loading.value=true;
    print("Product Detail review product ID ${APPURL.reivew +productId.toString()+"/reviews?limit=10&page=1"}");

    // final response = await http.get(
    //   Uri.parse(APPURL.productDetail +productId.toString()+"/reviews?limit=10&page=1"
    //   ),
    //   headers: <String, String>{
    //     'Content-Type': 'application/json; charset=UTF-8',
    //   },
    //   // body: jsonEncode(<String, dynamic>{
    //   // })
    // );

    final response = await _dio.get(APPURL.productDetail +productId.toString()+"/reviews?limit=10&page=1", options: buildCacheOptions(
        Duration(days: 7), //duration of cache
        forceRefresh: true
      //500, 500 happens, it will return cache
    ));

   // loading.value=false;

    print("Api Called Product  Detail review" );

    if (response.statusCode == 200) {
      print("response product Detail review --:"+response.data.toString());
      productDetailReviewModel.value = ProductDetailReviewModel.fromJson(response.data);
      Timer(Duration(milliseconds:250), () {
        loading.value=false;
      });
      print("Api model data collected");
      // print("length "+ categoryModelData.list1!.length.toString());
      // print("list "+ categoryModelData.list1![2].toString());
    }else
    {
      print("error- productDetailReview Controller"+response.data.toString());
      Map<String, dynamic> error = jsonDecode(response.data);
      Fluttertoast.showToast(
          msg: error["message"],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 12.0);
    }

  }





  Future ProductDetailAlsoBoughtApiCall() async{
    loading.value=true;
    print("Product Detail bundle product ID ${APPURL.productDetail +productId.toString()+"/alsoBought"}");

    // final response = await http.get(
    //   Uri.parse(APPURL.productDetail +productId.toString()+'/alsoBought'
    //   ),
    //   headers: <String, String>{
    //     'Content-Type': 'application/json; charset=UTF-8',
    //   },
    //
    //   // body: jsonEncode(<String, dynamic>{
    //   // })
    // );

    final response = await _dio.get(APPURL.productDetail +productId.toString()+'/alsoBought', options: buildCacheOptions(
        Duration(days: 7), //duration of cache
        forceRefresh: true
      //500, 500 happens, it will return cache
    ));

   // loading.value = false;

    print("Api Called Product Detail");

    if (response.statusCode == 200) {

      print("response product Detail Also bought --:"+response.data.toString());
      productDetailAlsoBoughtModel.value =await ProductDetailAlsoBoughtModel.fromJson(response.data);
      // // final responceData = json.decode(response.body);
      // loading.value=false;
      Timer(Duration(milliseconds:250), () {
        loading.value=false;
      });

      print("Api model data collected");
      // print("length "+ categoryModelData.list1!.length.toString());
      // print("list "+ categoryModelData.list1![2].toString());




    }else
    {
      print("error- productDetailAlsoBought Controller"+response.data.toString());
      Map<String, dynamic> error = jsonDecode(response.data);
      Fluttertoast.showToast(
          msg: error["message"],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 12.0);
    }

  }
  Future ManufacturerApiCall() async{
    loading.value=true;
    print("loading"+loading.toString());
    print("manufacturer API ");
    final response = await http.post(
      Uri.parse(APPURL.manufaturer),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },

      body: jsonEncode(<String, dynamic>{


        "isTopMenu": true,
        "limit": 50,
        "page": 1,
        "sort": "string"


      }),
    );
    if (response.statusCode == 200) {
      print("loading"+loading.toString());

      print("response manufacturer --: "+response.body);
      manufacturerModel!.value = ManufacturerModel.fromJson(jsonDecode(response.body));
      // final responceData = json.decode(response.body);
      for (var i = 0; i < manufacturerModel!.value.list1!.length; i++) {
        // print("index");
        // print(i);
        manufacturerImage.value.add(APPURL.imageBaseUrl+manufacturerModel!.value.list1![i].image.toString()) ;
        // print(manufacturerImage);
      }
      // manufacturerImage.value=manufacturerModel.value.list1!.image as List;
      print(manufacturerImage);
      Timer(Duration(milliseconds:250), () {
        loading.value=false;
      });
      // print("loading"+loading.toString());
      // print("Manufacturer List "+manufacturerImage.toString());




      print("Api model data collected");
      // print("length "+ categoryModelData.list1!.length.toString());
      // print("list "+ categoryModelData.list1![2].toString());




    }else
    {
      print("error- manufacturer"+response.body.toString());
      loading.value=false;
      Map<String, dynamic> error = jsonDecode(response.body);
      Fluttertoast.showToast(
          msg: error["message"],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 12.0);
    }

  }

  Future ManufacturerIDApiCall() async{
    loading.value=true;
    print("loading"+loading.toString());
    print("manufacturerID API "+APPURL.manufacturerId+manufacturerId.toString());
    // final response = await http.get(
    //   Uri.parse(APPURL.manufacturerId+manufacturerId.toString()),
    //   headers: <String, String>{
    //     'Content-Type': 'application/json; charset=UTF-8',
    //   },
    // );

    final response = await _dio.get(APPURL.manufacturerId+manufacturerId.toString(), options: buildCacheOptions(
        Duration(days: 7), //duration of cache
        forceRefresh: true
      //500, 500 happens, it will return cache
    ));

    //loading.value=false;

    if (response.statusCode == 200) {
      // print("loading"+loading.toString());

      // print("response manufacturer --: "+response.data.toString());
      manufacturerIdModel.value = ManufacturerIdModel.fromJson(response.data);
      // final responceData = json.decode(response.body);


      // manufacturerImage.value=manufacturerModel.value.list1!.image as List;
      Timer(Duration(milliseconds:250), () {
        loading.value=false;
      });
      // print("loading"+loading.toString());
      // print("Manufacturer List "+manufacturerImage.toString());




      print("Api model data collected");
      // print("length "+ categoryModelData.list1!.length.toString());
      // print("list "+ categoryModelData.list1![2].toString());

    }else
    {
      print("error- manufacturer"+response.data.toString());
      Timer(Duration(milliseconds:250), () {
        loading.value=false;
      });
      Map<String, dynamic> error = jsonDecode(response.data);
      Fluttertoast.showToast(
          msg: error["message"],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 12.0);
    }

  }


}