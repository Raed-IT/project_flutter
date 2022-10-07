import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project/app/data/global/global%20Auth/auth_controller.dart';
import 'package:project/app/data/models/category_model.dart';
import 'package:project/app/data/routs_api.dart';
import 'package:project/app/pages/show_prduct_screen/show_prduct_controller.dart';

class ShowProductScreen extends GetView<ShowProductController> {
  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    CategoryModel categoryModel = Get.arguments['category'];
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.deepOrange,
            centerTitle: true,
            title: Text("${categoryModel.name}"),
          ),
          SliverAnimatedList(
              initialItemCount: categoryModel.products.length,
              itemBuilder: (context, index, animation) {
                return Card(
                  child: Column(
                    children: [
                      (categoryModel.products[index].images.isNotEmpty)
                          ? Image.network(
                              "${RouterApi.HOSTIMAGE}${categoryModel.products[index].images[0].url}")
                          : Container(),
                      Padding(
                        padding: EdgeInsets.all(8.sp),
                        child: Text("${categoryModel.products[index].name}"),
                      ),
                      Divider(),
                      Text("${categoryModel.products[index].desc}"),
                      Divider(),
                      Row(crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // MaterialButton(onPressed: (){},child: Text('+'),color: Colors.redAccent.withOpacity(0.7),),
                          //
                          // MaterialButton(onPressed: (){},child: Text('-'),color: Colors.redAccent.withOpacity(0.7)),
                        ],
                      )
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}
