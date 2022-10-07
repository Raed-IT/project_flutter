import 'package:get/get.dart';
import 'package:project/app/data/providers/category_provider.dart';
import 'package:project/app/pages/home_screen/home_conteoller.dart';
class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryProvider());
    Get.put(HomeController());
  }
}
