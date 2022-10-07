import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project/app/data/routs_api.dart';
import 'package:project/app/pages/home_screen/home_conteoller.dart';
import 'package:project/app/route/routs.dart';
import 'package:project/app/theme/app_colors.dart';

class HomeScreen extends GetView<HomeController> {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.deepOrange,
              title: Text("shop App "),
              centerTitle: true,
            ),
            (controller.isLoad.value)
                ? SliverToBoxAdapter(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: (Get.height / 2) - 70.h,
                        ),
                        Center(
                          child: CircularProgressIndicator(),
                        ),
                      ],
                    ),
                  )
                : SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 140.h,
                      mainAxisSpacing: 10.sp,
                      crossAxisSpacing: 10.sp,
                      childAspectRatio: 2.0.sp,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return GestureDetector(
                          onTap: (){
                            Get.toNamed(AppRouters.SHOW_PRODUCT,arguments: {"category":controller.category[index]});
                          },
                          child: Card(
                            elevation: 7,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.sp))),
                            shadowColor: Colors.black38,
                            // generate blues with random shades
                            child: Column(
                              children: [
                                Expanded(
                                  child: (controller
                                          .category[index].images.isNotEmpty)
                                      ? Image.network(
                                          "${RouterApi.HOSTIMAGE}${controller.category[index].images[0].url}",
                                          fit: BoxFit.cover,
                                          height: 200.h,
                                        )
                                      : const Center(
                                          child: Text("no image "),
                                        ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0.sp),
                                    child: Text(
                                        "${controller.category[index].name}"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      childCount: controller.category.length,
                    ),
                  ),
          ],
        );
      }),
    );
  }
}
