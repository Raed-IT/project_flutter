import 'package:get/get.dart';
import 'package:project/app/pages/show_prduct_screen/show_prduct_binding.dart';
import 'package:project/app/pages/show_prduct_screen/show_prduct_screen.dart';
import 'package:project/app/route/routs.dart';

class ShowProductPage extends GetPage{
  ShowProductPage():super(
    name: AppRouters.SHOW_PRODUCT,
    page: ()=>ShowProductScreen(),
    binding: ShowProductBinding(),
  );

}