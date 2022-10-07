
import 'package:get/get.dart';
import 'package:project/app/pages/login_screen/login_binding.dart';
import 'package:project/app/pages/login_screen/login_screen.dart';
import 'package:project/app/route/routs.dart';
class LoginPage  extends GetPage{
  LoginPage():super(
      name: AppRouters.LOGIN_SCREEN,
      page: () => LoginScreen(),
      binding: LoginBinding(),
      transitionDuration: const Duration(milliseconds: 500));

}