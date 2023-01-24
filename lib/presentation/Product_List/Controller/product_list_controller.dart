import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'package:obatala/core/utils/app_url.dart';
import 'package:obatala/presentation/Product_List/Model/ProductListFiltermodel.dart';
import 'package:obatala/presentation/Product_List/Model/list.dart';
import 'package:obatala/presentation/Product_List/Model/productListFilter.dart';
import 'dart:convert';
import 'package:obatala/presentation/Product_List/Model/productListModel.dart';

class ProductListController extends GetxController with StateMixin<dynamic> {

  Rx<ProductListModel>? productListModel = ProductListModel().obs;
  Rx<Productlist>? productList = Productlist().obs;
  Rx<productFilter> pfilter=productFilter().obs;
  RxBool loading =false.obs;
  dynamic argumentData = Get.arguments;
  String? categoryID;
  String? slug;
  RxList users=[].obs;
  RxList<ProductListFilter>?list =RxList.empty() ;






  @override
  void onReady() {
    // TODO: implement onReady
    if (argumentData != null) {
      categoryID=argumentData['categoryId'];
      slug=argumentData['slug'];
      print("category Id"+categoryID.toString());
    }
    ProductApiCall();
    print("category Id"+categoryID.toString());

    ProductFilterApiCall();

    super.onReady();

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
        "slug": slug.toString(),
        "categoryId": categoryID.toString(),
        "limit": 32,
        "page": 1

      }),
    );
    if (response.statusCode == 200) {
      print("loading"+loading.toString());
      print("response PRODUCT LIST --: "+response.body);

      productListModel!.value = ProductListModel.fromJson(jsonDecode(response.body));
      // final responceData = json.decode(response.body);
      print("loading"+loading.toString());
      loading.value=false;
      print("Api model data collected");
    }else
    {
      print("error- product LIST"+response.body.toString());
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


  Future ProductFilterApiCall() async{
    loading.value=true;
    print("loading"+loading.toString());
    print("product API ");
    final response = await http.post(
      Uri.parse(APPURL.filter),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },

      body: jsonEncode(<String, dynamic>{
        "attributes": {
        },
        "slug": "espressomachines",
        "categoryId": "9",

      }),
    );
    if (response.statusCode == 200) {
      print("loading"+loading.toString());
      print("response PRODUCT FILTER --: "+response.body);
       // users.value = (json.decode(response.body) as List)
       //    .map((data) => ProductListFilter.fromJson(data))
       //    .toList();
      list!.value=(json.decode(response.body) as List).map((i) => ProductListFilter.fromJson(i)).cast<ProductListFilter>().toList();
      // print("patientIdDocument-"+list.toString());
      // for (var i =0;i<list!.length;i++){
      //   print(list![i].children![i].label.toString());
      // }




      // List<ProductListFilter> users = (json.decode(response.body) as List)
      //     .map((data) => ProductListFilter.fromJson(data))
      //     .toList();
      // List<dynamic> list1 = jsonDecode(response.body);
      // final responceData = json.decode(response.body);
      print("loading"+loading.toString());
      loading.value=false;
      print("Api model data collected");
    }else
    {
      print("error- product LIST"+response.body.toString());
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