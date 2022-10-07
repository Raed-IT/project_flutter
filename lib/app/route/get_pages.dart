import 'package:get/get.dart';
import 'package:project/app/pages/home_screen/home_page.dart';
import 'package:project/app/pages/login_screen/login_page.dart';
import 'package:project/app/pages/reigister_screen/reigister_page.dart';
import 'package:project/app/pages/show_prduct_screen/show_prduct_page.dart';
import 'package:project/app/pages/splash_screen/splash_page.dart';

class GetPagesProvider {
  static List<GetPage> getPages = [
    SplashPage(),
    homePage(),
    LoginPage(),
    RegisterPage(),
    ShowProductPage(),
  ];
}
