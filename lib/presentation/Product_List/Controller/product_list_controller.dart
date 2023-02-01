import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'package:obatala/core/utils/app_url.dart';
import 'package:obatala/presentation/Dashboard/Category/Model/CategoryModel.dart';
import 'package:obatala/presentation/Product_List/Model/categoryDetailModel.dart';
import 'package:obatala/presentation/Product_List/Model/productListFilter.dart';
import 'dart:convert';
import 'package:obatala/presentation/Product_List/Model/productListModel.dart';
import 'package:obatala/routes/app_routes.dart';

class ProductListController extends GetxController with StateMixin<dynamic> {

  Rx<ProductListModel>? productListModel = ProductListModel().obs;
  Rx<CategoryModel>? categoryModelData = CategoryModel().obs;
  Rx<CategoryDetailModel>? categoryDetailModelData = CategoryDetailModel().obs;

  RxBool loading =false.obs;
  dynamic argumentData = Get.arguments;
  String? categoryID;
  String? slug;
  RxList users=[].obs;
  RxList<ProductListFilter>?list =RxList.empty() ;
  RxDouble start = 10.0.obs;
  RxDouble end = 50.0.obs;
  TextEditingController ControllerEnd = TextEditingController();

  TextEditingController ControllerStart = TextEditingController();
  Rx<RangeValues> currentRangeValues =  RangeValues(0, 10).obs;


  @override
  void onInit() {
    print("pro_list onInit");
    if (argumentData != null) {
      categoryID=argumentData['categoryId'];
      slug=argumentData['slug'];
      print("category Id"+categoryID.toString());
    }

    ProductApiCall();
    print("category Id"+categoryID.toString());
    print("slug"+slug.toString());

    ProductFilterApiCall();
    CategoryApiCall();
    CategoryDetailApiCall();
    currentRangeValues();

    super.onInit();
  }


  @override
  void onReady() {
    print("pro_list onReady");
    // TODO: implement onReady
    // if (argumentData != null) {
    //   categoryID=argumentData['categoryId'];
    //   slug=argumentData['slug'];
    //   print("category Id"+categoryID.toString());
    // }
    //
    // ProductApiCall();
    // print("category Id"+categoryID.toString());
    //
    // ProductFilterApiCall();
    // CategoryApiCall();
    // currentRangeValues();
    super.onReady();
  }


  void ProductListReload(String catID,String Slug){
    print("ca ID "+catID);
    print("sl "+Slug.toString());
    categoryID = catID;
    slug  = Slug;
    ProductApiCall();
    ProductFilterApiCall();
    CategoryApiCall();
    // currentRangeValues();

  }


  Future ProductListFilterApiCall(List manufacturer,String from, String till) async{
    loading.value=true;
    print("loading"+loading.toString());
    print("product API ");
    print("from price"+from.toString());
    print("till price"+till.toString());
    final response = await http.post(
      Uri.parse(APPURL.product),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },

      body: jsonEncode(<String, dynamic>{
       "attributes":{
         "manufacturer":manufacturer
       },
        "categoryId":categoryID!.toString(),
        "price": {"from": from, "to": till},
        "slug":slug!.toString()
      }),
    );
    if (response.statusCode == 200) {
      print("loading"+loading.toString());
      debugPrint("response PRODUCT Filter used --: "+response.body);

      productListModel!.value = ProductListModel.fromJson(jsonDecode(response.body));

      // final responceData = json.decode(response.body);
      print("loading"+loading.toString());
      Timer(Duration(milliseconds:250), () {
        loading.value=false;
      });
      print("Api model data collected");
    }else
    {
      Timer(Duration(milliseconds:250), () {
        loading.value=false;
      });
      print("error- product LIST filter used"+response.body.toString());
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
      Timer(Duration(milliseconds:250), () {
        loading.value=false;
      });
      print("Api model data collected");
    }else
    {
      print("error- product LIST"+response.body.toString());
      Timer(Duration(milliseconds:250), () {
        loading.value=false;
      });

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
        "slug": slug,
        "categoryId": categoryID,

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
      //   print("controller end"+list!.last.till.toString());
      // }
      ControllerStart.text=list!.last.from.toString() ;
      ControllerEnd.text=list!.last.till.toString() ;

      start.value=double.parse(ControllerStart.text.toString());
      end.value=double.parse(ControllerEnd.text.toString());
      currentRangeValues.value=RangeValues(start.value, end.value);

      print("Start value"+start.value.toString());
      print("End value"+end.value.toString());
      print("loading"+loading.toString());
      Timer(Duration(milliseconds:250), () {
        loading.value=false;
      });
      print("Api model data collected");
    }
    else {
      Timer(Duration(milliseconds:250), () {
        loading.value=false;
      });
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

  Future CategoryDetailApiCall() async{
    loading.value=true;
    print("loading"+loading.toString());


    print("Category Detail API ");
    final response = await http.get(
      Uri.parse(APPURL.category+'/'+categoryID.toString()),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },


    );
    if (response.statusCode == 200) {

      print("response cat details--:"+response.body);
      categoryDetailModelData!.value = CategoryDetailModel.fromJson(jsonDecode(response.body));
      // final responceData = json.decode(response.body);



      print("loading"+loading.toString());

      print("Api model data collected");
      // print("length "+ categoryModelData.list1!.length.toString());
      // print("list "+ categoryModelData.list1![2].toString());



      Timer(Duration(milliseconds:250), () {
        loading.value=false;
      });

    }else
    {
      print("error- category detail"+response.body.toString());
      Timer(Duration(milliseconds:250), () {
        loading.value=false;
      });

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



      print("loading"+loading.toString());

      print("Api model data collected");
      // print("length "+ categoryModelData.list1!.length.toString());
      // print("list "+ categoryModelData.list1![2].toString());



      Timer(Duration(milliseconds:250), () {
        loading.value=false;
      });

    }else
    {
      print("error- category"+response.body.toString());
      Timer(Duration(milliseconds:250), () {
        loading.value=false;
      });

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