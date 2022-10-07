import 'package:get/get.dart';
import 'package:project/app/data/routs_api.dart';
class AuthProvider extends GetConnect{
  Future<Response> login (Map<String ,String> data )=>post(RouterApi.LOGIN, data);
  Future<Response>register (Map<String ,String> data ) async{
    return post(RouterApi.REGISTER,  data  );
  }
}