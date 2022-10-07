import 'package:get/get.dart';
import 'package:project/app/pages/reigister_screen/reigister_bindig.dart';
import 'package:project/app/pages/reigister_screen/reigister_screen.dart';
import 'package:project/app/route/routs.dart';

class RegisterPage extends GetPage{
  RegisterPage():super(
    name: AppRouters.REGISTER,
    page: ()=>RegisterScreen(),
    binding: RegisterBinding(),
  );
}