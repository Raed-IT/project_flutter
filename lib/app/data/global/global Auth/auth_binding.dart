import 'package:get/get.dart';
import 'package:project/app/data/global/global%20Auth/auth_controller.dart';

class AuthBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(AuthController() ,permanent: true);
  }

}