
import 'package:get/get.dart';
import 'package:project/app/data/providers/login_provider.dart';
import 'package:project/app/pages/login_screen/login_controller.dart';


class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthProvider());
    Get.put(LoginScreenController());
  }
}