import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project/app/data/global/get_storage.dart';
import 'package:project/app/data/models/driver_model.dart';
import 'package:project/app/data/models/product_model.dart';
import 'package:project/app/route/routs.dart';

class AuthController extends GetxController {
  RxnString token = RxnString();
  Rxn<UserModel> user = Rxn<UserModel>();
  RxList<ProductModel> products = RxList([]);
  String ip ='';
  @override
  void onInit() {
    super.onInit();
    // GetStorage(AppRouters.APP_NAME).erase();
     if (GetStorage(AppRouters.APP_NAME).hasData('token')) {
      token(StorageController.getData(key: "token"));
      user(
        UserModel.fromJson(
          StorageController.getData(key: "user"),
        ),
      );
    }
  }
}
