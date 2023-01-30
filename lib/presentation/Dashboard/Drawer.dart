import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obatala/presentation/Product_List/Controller/product_list_controller.dart';

import '../../routes/app_routes.dart';
import 'Category/Controller/category_controller.dart';

class DrawerWidget extends GetWidget<CategoryController> {
  DrawerWidget({super.key});
  ProductListController controllerList=ProductListController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
           Container(
                  height: MediaQuery.of(context).size.height,

                  child:
                  controller
                      .categoryModelData!.value.list1==null?SizedBox():
                  ListView.builder(
                      itemCount:  controller.categoryModelData!.value.list1!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                // controller.ProductListPage();
                                // Get.back();
                                // controllerList.ProductListReload();
                                print("on Pressed" );
                                print("Cat id"+controller.categoryModelData!
                                    .value.list1![index].crumbPath![0].id
                                    .toString());

                                print("slug "+ controller.categoryModelData!.value
                                    .list1![index].crumbPath![0].slug
                                    .toString());
                                // Get.back();
                                Navigator.pushReplacementNamed(
                                  context,
                                  AppRoutes.productList,
                                   arguments: {
                                     "categoryId": controller.categoryModelData!
                                     .value.list1![index].crumbPath![0].id.toString(),
                                      "slug": controller.categoryModelData!.value
                                          .list1![index].crumbPath![0].slug
                                          .toString()
                                       }
                                );

                                // Get.toNamed(AppRoutes.productList, arguments: {
                                //   "categoryId": controller.categoryModelData!
                                //       .value.list1![index].crumbPath![0].id
                                //       .toString(),
                                //   "slug": controller.categoryModelData!.value
                                //       .list1![index].crumbPath![0].slug
                                //       .toString()
                                // });


                              },
                              child: ListTile(
                                title: Text(controller
                                    .categoryModelData!.value.list1![index].name
                                    .toString()),
                              ),
                            ),
                            Divider(),
                          ],
                        );
                      }),
                )
          ],
        ),
      ),
    );
  }
}
