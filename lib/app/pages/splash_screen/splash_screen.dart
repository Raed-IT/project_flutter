import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 import 'package:get/get.dart';
import 'package:project/app/data/global/global%20Auth/auth_controller.dart';
import 'package:project/app/data/routs_api.dart';

import '../../route/routs.dart';

class SplashScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // Future.delayed(
    //   const Duration(seconds: 4),
    // );
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.w),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (v){
                Get.find<AuthController>().ip=v;
              },
              
            ),
            MaterialButton(onPressed: (){
                Get.offAllNamed(AppRouters.HOME_SCREEN);
            },child: Text('تم'),)
          ],
        )
      ),
    );
  }
}
