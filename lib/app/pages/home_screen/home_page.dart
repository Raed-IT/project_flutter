import 'package:get/get.dart';
import 'package:project/app/data/middelwares/is_login.dart';
import 'package:project/app/pages/home_screen/home_binding.dart';
import 'package:project/app/pages/home_screen/home_screen.dart';
import 'package:project/app/route/routs.dart';

class homePage extends GetPage {
  homePage()
      : super(
          name: AppRouters.HOME,
          binding: HomeBinding(),
          page: () => HomeScreen(),
          middlewares: [IsLoginMiddleware()]
        );
}
