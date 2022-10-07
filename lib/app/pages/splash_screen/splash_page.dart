
import 'package:get/get.dart';
import 'package:project/app/data/global/global%20Auth/auth_binding.dart';
import 'package:project/app/pages/splash_screen/splash_screen.dart';
import 'package:project/app/route/routs.dart';
 class SplashPage  extends GetPage{
  SplashPage():super(
      name: AppRouters.SPLASH_SCREEN,
      page: () => SplashScreen(),
      binding: AuthBinding(),
      transitionDuration: const Duration(milliseconds: 500));

}