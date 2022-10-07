import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:project/app/data/global/get_storage.dart';
import 'package:project/app/data/global/global%20Auth/auth_controller.dart';
import 'package:project/app/data/global/global%20Auth/check_response.dart';
import 'package:project/app/data/models/driver_model.dart';
import 'package:project/app/data/providers/login_provider.dart';
import 'package:project/app/pages/components/snack_bar.dart';
import 'package:project/app/route/routs.dart';
class LoginScreenController extends GetxController {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool rememberMe = RxBool(false);
  final AuthProvider _loginProvider = AuthProvider();
  final AuthController _authController = Get.find<AuthController>();

  Future<void> login() async {
    if (formKey.currentState!.validate()) {
      try {
        EasyLoading.show(
          dismissOnTap: true,
        );

        Response res = await _loginProvider.login({
          "email": emailController.text,
          "pass": passwordController.text,

        });
        print (res.body);
        bool result = chekResponse(response: res);
        if (result) {
          _authController.user(UserModel.fromJson(res.body['user']));
          _authController.token(res.body['token']);
          EasyLoading.showSuccess("success".tr);
          // store driver data to local storage
          await StorageController.setData(
              key: "user", value: res.body['user']);
          await StorageController.setData(
              key: 'token', value: res.body['token']);
          Get.offAllNamed(AppRouters.HOME_SCREEN);
        } else {
          EasyLoading.showError("error".tr);
        }
      } catch (e) {
        EasyLoading.showError("error".tr);
        showSnackBar(message: "$e", success: false);
      }
    }
  }
}
