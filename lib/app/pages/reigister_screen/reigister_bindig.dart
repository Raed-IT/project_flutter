import 'package:get/get.dart';
import 'package:project/app/pages/reigister_screen/reigister_controller.dart';

class RegisterBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(RegisterController());
  }

}