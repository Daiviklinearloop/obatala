import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class PrefUtils{



  Future setRecentProduct(String ProductId) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> recent =[];
    List<String>? recentProduct =await getRecentProduct();
    print("recent old "+recentProduct.toString());


    if(recentProduct != null && recentProduct.length > 0){
      recent.addAll(recentProduct);
      if(!recent.contains(ProductId)){
        if(recent.length>=4 ){
          recent.removeLast();
        }
        recent.insert(0, ProductId);

      }
      print("recent new"+recent.toString());

    } else{
      print("recent product null");
      recent.add(ProductId.toString());
      print("recent "+recent.toString());

    }
        return prefs.setStringList('recentProduct',recent );
  }

Future<List<String>?> getRecentProduct()async{
  final prefs = await SharedPreferences.getInstance();
return  prefs.getStringList('recentProduct');
}


}