 import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:project/app/data/global/global%20Auth/check_response.dart';
import 'package:project/app/data/models/category_model.dart';
import 'package:project/app/data/providers/category_provider.dart';

class HomeController extends GetxController{
  RxBool isLoad =RxBool(false);
  RxList<CategoryModel> category =RxList([]);

  @override
  void onInit() {
    super.onInit();
    getCategory();
  }
  Future<void> getCategory()async{
    try{
      isLoad(true);
    Response res = await Get.find<CategoryProvider>().getCategory();
      isLoad(false);
      print(res.body);
    bool result = chekResponse(response: res);
    if (result) {
      category.clear();
      for (var item in res.body['category']) {
        category.add(CategoryModel.fromJson(item));
      }
      print(category.length);
    }
    }catch(e){
      isLoad(false);
      print(e);
    }

  }
}