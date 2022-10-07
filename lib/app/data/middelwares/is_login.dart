// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/app/route/routs.dart';

import '../global/global Auth/auth_controller.dart';

class IsLoginMiddleware extends GetMiddleware {
  final AuthController _authController =Get.find<AuthController>();
  AuthController authController = Get.find<AuthController>();
  @override
  RouteSettings? redirect(String? route) {
    // print (" ================= ${_authController.token.value}");
      if (_authController.token.value==null) {
        return const RouteSettings(name: AppRouters.LOGIN_SCREEN);
      }
    return null;

  }
}
