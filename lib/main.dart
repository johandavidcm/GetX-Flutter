import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mercados_delivery/src/controllers/global_controller.dart';
import 'package:mercados_delivery/src/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(GlobalController());
    return GetMaterialApp(
      title: 'Material App',
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
