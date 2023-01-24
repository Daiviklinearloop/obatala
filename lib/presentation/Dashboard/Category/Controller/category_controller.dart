import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'package:obatala/core/utils/app_url.dart';
import 'dart:convert';

import 'package:obatala/presentation/Dashboard/Category/Model/CategoryModel.dart';
import 'package:obatala/presentation/Dashboard/Category/Model/ProductModel.dart';
import 'package:obatala/presentation/Dashboard/Category/Model/manufacturer_model.dart';

class CategoryController extends GetxController with StateMixin<dynamic> {


  Rx<CategoryModel>? categoryModelData = CategoryModel().obs;
  Rx<ProductModel>? productModelData = ProductModel().obs;
  Rx<ManufacturerModel>? manufacturerModel = ManufacturerModel().obs;

  RxList<dynamic> manufacturerImage=[].obs;

  RxBool loading =false.obs;

  RxString categoryName= "".obs;
  RxString categoryImage="".obs;



@override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    CategoryApiCall();
    ProductApiCall();
    ManufacturerApiCall();


}

  Future CategoryApiCall() async{
    loading.value=true;
    print("loading"+loading.toString());


    print("Category API ");
    final response = await http.post(
      Uri.parse(APPURL.category),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },

      body: jsonEncode(<String, dynamic>{
          "attributes": {
            "string": "string"
          },
          "manufacturerId": "string",
          "limit": 11,
          "page": 1,
          "sort": "string",
          "level": 0,
          "parentId": 0,
          "component": "string"

      }),
    );
    if (response.statusCode == 200) {

      print("response --:"+response.body);
     categoryModelData!.value = CategoryModel.fromJson(jsonDecode(response.body));
    // final responceData = json.decode(response.body);
      loading.value=false;



      print("loading"+loading.toString());

    print("Api model data collected");
    // print("length "+ categoryModelData.list1!.length.toString());
    // print("list "+ categoryModelData.list1![2].toString());




    }else
    {
      print("error- category"+response.body.toString());
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


  Future ProductApiCall() async{
  loading.value=true;
  print("loading"+loading.toString());
    print("product API ");
    final response = await http.post(
      Uri.parse(APPURL.product),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },

      body: jsonEncode(<String, dynamic>{
        "price": {
          "from": 0,
          "to": 0
        },
        "attributes": {
          "string": "string"
        },
        "slug": "string",
        "categoryId": "string",
        "manufacturerId": "string",
        "search": "string",
        "select": "string",
        "specialProducts": true,
        "inStock": false,
        "limit": 0,
        "page": 0,
        "sort": "string",
        "component": "string",
        "productsId": [
          "string"
        ]

      }),
    );
    if (response.statusCode == 200) {
      print("loading"+loading.toString());
      print("response product --: "+response.body);

      productModelData!.value = ProductModel.fromJson(jsonDecode(response.body));
      // final responceData = json.decode(response.body);
      print("loading"+loading.toString());
      loading.value=false;





      print("Api model data collected");
      // print("length "+ categoryModelData.list1!.length.toString());
      // print("list "+ categoryModelData.list1![2].toString());




    }else
    {
      print("error- category"+response.body.toString());
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
}