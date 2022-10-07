import 'package:get/get.dart';
import 'package:project/app/data/global/global%20Auth/auth_controller.dart';

class RouterApi {
  static   String HOST = 'http://${Get.find<AuthController>().ip}/dashpoard_admin/public/api';
  static   String HOSTIMAGE = 'http://${Get.find<AuthController>().ip}/dashpoard_admin/public/images/';
   static   String LOGIN = "$HOST/login";
  static   String REGISTER = "$HOST/register";
  static   String CATEGORY = "$HOST/category";
 }
