import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'package:obatala/core/utils/app_url.dart';
import 'package:obatala/presentation/Dashboard/Category/Model/manufacturer_model.dart';
import 'package:obatala/presentation/ProductDetailScreen/Model/manufactureIdModel.dart';
import 'package:obatala/presentation/ProductDetailScreen/Model/product_detail_alsoBought_model.dart';
import 'package:obatala/presentation/ProductDetailScreen/Model/product_detail_bundle_model.dart';
import 'dart:convert';

import 'package:obatala/presentation/ProductDetailScreen/Model/product_detail_model.dart';
import 'package:obatala/presentation/ProductDetailScreen/Model/product_detail_related_product_model.dart';


class ProductDetailController extends GetxController with StateMixin<dynamic> {

  Rx<ProductDetailModel> productDetailModel= ProductDetailModel().obs;
  Rx<ProductDetailRelatedProductModel> productDetailRelatedProductModel= ProductDetailRelatedProductModel().obs;
  Rx<ProductDetailBundleModel> productDetailBundleModel= ProductDetailBundleModel().obs;
  Rx<ProductDetailAlsoBoughtModel> productDetailAlsoBoughtModel= ProductDetailAlsoBoughtModel().obs;
  Rx<ManufacturerIdModel> manufacturerIdModel= ManufacturerIdModel().obs;
  RxBool loading =false.obs;
  dynamic argumentData = Get.arguments;
  String? productId;
  String? manufacturerId;
  RxList<dynamic> manufacturerImage=[].obs;
  Rx<ManufacturerModel>? manufacturerModel = ManufacturerModel().obs;
  RxInt productCount=0.obs;
  RxString  combiDealTotal="".obs;
  RxDouble combiDeal=0.0.obs;
  RxDouble a=0.0.obs;
  RxDouble DealPrice=0.0.obs;
  RxDouble ProductActualPrice=0.0.obs;








  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    if (argumentData != null) {
      productId=argumentData['productID'];
      manufacturerId=argumentData['manufacturerID'];
      print("Product Id " +productId.toString());
      print("Manufacturer Id " +manufacturerId.toString());

    }
    ProductDetailApiCall();
    ProductDetailRelatedProductApiCall();
    ProductDetailBundleApiCall();
    ProductDetailAlsoBoughtApiCall();
    ManufacturerApiCall();
    ManufacturerIDApiCall();


  }
  Future ProductDetailApiCall() async{
    loading.value=true;
    print("Product Detail product ID ${APPURL.productDetail +productId.toString()}");

    final response = await http.get(
      Uri.parse(APPURL.productDetail +productId.toString()
      ),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },

      // body: jsonEncode(<String, dynamic>{
      // })
    );
    print("Api Called Product Detail");

    if (response.statusCode == 200) {

      print("response product Detail --:"+response.body);
      productDetailModel.value = ProductDetailModel.fromJson(jsonDecode(response.body));
      // // final responceData = json.decode(response.body);
      ProductActualPrice.value=double.parse(productDetailModel.value.price.toString());
      loading.value=false;

      print("Api model data collected");
      // print("length "+ categoryModelData.list1!.length.toString());
      // print("list "+ categoryModelData.list1![2].toString());




    }else
    {    loading.value=false;

    print("error- productDetail Controller"+response.body.toString());
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



  Future ProductDetailRelatedProductApiCall() async{
    print("Product Detail product ID ${APPURL.productDetail +productId.toString()}");
    loading.value=true;

    final response = await http.get(
      Uri.parse(APPURL.productDetailRelatedProduct +productId.toString()+'/relatedProduct'
      ),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },

      // body: jsonEncode(<String, dynamic>{
      // })
    );
    print("Api Called Product Detail related Product ");

    if (response.statusCode == 200) {

      print("response product Detail Related Product  --:"+response.body);
      productDetailRelatedProductModel.value =await ProductDetailRelatedProductModel.fromJson(jsonDecode(response.body));
      // // final responceData = json.decode(response.body);
      loading.value=false;

      print("Api model data collected");
      // print("length "+ categoryModelData.list1!.length.toString());
      // print("list "+ categoryModelData.list1![2].toString());




    }else
    {    loading.value=false;


    print("error- productDetail Controller"+response.body.toString());
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



  Future ProductDetailBundleApiCall() async{
    loading.value=true;
    print("Product Detail bundle product ID ${APPURL.productDetail +productId.toString()+"/bundle"}");

    final response = await http.get(
      Uri.parse(APPURL.productDetail +productId.toString()+'/bundle'
      ),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      // body: jsonEncode(<String, dynamic>{
      // })
    );
    print("Api Called Product Detail");

    if (response.statusCode == 200) {
      print("response product Detail Bundle --:"+response.body);
      productDetailBundleModel.value =await ProductDetailBundleModel.fromJson(jsonDecode(response.body));
      // // final responceData = json.decode(response.body);
      loading.value=false;
      print("Api model data collected");
      for( var i =0; i<=productDetailBundleModel.value.list1!.length-1;i++){
        productCount.value =productDetailBundleModel.value.list1![i].products!.length;
        print("Product Count"+productCount.toString());
        print("product List count"+productDetailBundleModel.value.list1!.length.toString());
        for( var j =0; j<=productCount.value-1;j++){
          combiDealTotal.value=productDetailBundleModel.value.list1![i].products![j].price;
          print("Combi Deal total"+combiDealTotal.toString());

          combiDeal.value=double.parse(productDetailBundleModel.value.list1![i].products![j].price.toString());
          a.value += combiDeal.value;
          print("cobi "+combiDeal.toString());
          print("a "+a.toString());
        }
        print("Product Actual"+ProductActualPrice.toString());
        print("b.value "+DealPrice.toString());
        print("a total "+a.toString());


      };


      // print("length "+ categoryModelData.list1!.length.toString());
      // print("list "+ categoryModelData.list1![2].toString());




    }else
    {
      print("error- productDetailBundle Controller"+response.body.toString());
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




  Future ProductDetailAlsoBoughtApiCall() async{
    print("Product Detail bundle product ID ${APPURL.productDetail +productId.toString()+"/alsoBought"}");

    final response = await http.get(
      Uri.parse(APPURL.productDetail +productId.toString()+'/alsoBought'
      ),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },

      // body: jsonEncode(<String, dynamic>{
      // })
    );
    print("Api Called Product Detail");

    if (response.statusCode == 200) {

      print("response product Detail Also bought --:"+response.body);
      productDetailAlsoBoughtModel.value =await ProductDetailAlsoBoughtModel.fromJson(jsonDecode(response.body));
      // // final responceData = json.decode(response.body);
      // loading.value=false;

      print("Api model data collected");
      // print("length "+ categoryModelData.list1!.length.toString());
      // print("list "+ categoryModelData.list1![2].toString());




    }else
    {
      print("error- productDetailAlsoBought Controller"+response.body.toString());
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
        print("index");
        print(i);
        manufacturerImage.value.add(APPURL.imageBaseUrl+manufacturerModel!.value.list1![i].image.toString()) ;
        print(manufacturerImage);
      }
      // manufacturerImage.value=manufacturerModel.value.list1!.image as List;
      print(manufacturerImage);
      loading.value=false;
      print("loading"+loading.toString());
      print("Manufacturer List "+manufacturerImage.toString());




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
    final response = await http.get(
      Uri.parse(APPURL.manufacturerId+manufacturerId.toString()),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },


    );
    if (response.statusCode == 200) {
      print("loading"+loading.toString());

      print("response manufacturer --: "+response.body);
      manufacturerIdModel.value = ManufacturerIdModel.fromJson(jsonDecode(response.body));
      // final responceData = json.decode(response.body);


      // manufacturerImage.value=manufacturerModel.value.list1!.image as List;
      loading.value=false;
      print("loading"+loading.toString());
      print("Manufacturer List "+manufacturerImage.toString());




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


}