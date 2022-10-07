import 'dart:io';

import 'package:get/get.dart';
import 'package:project/app/data/global/global%20Auth/auth_controller.dart';
import 'package:project/app/data/routs_api.dart';

class CategoryProvider extends GetConnect{
  Future<Response> getCategory(){
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: "application/json",
      HttpHeaders.authorizationHeader: "Bearer ${Get.find<AuthController>().token}"
    };
    return get(RouterApi.CATEGORY,headers: headers);
  }
}