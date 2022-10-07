import 'package:get/get.dart';
import 'package:project/app/pages/show_prduct_screen/show_prduct_controller.dart';

class ShowProductBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(ShowProductController());
  }

}