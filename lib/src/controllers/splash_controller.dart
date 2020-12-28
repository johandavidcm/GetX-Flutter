import 'package:get/state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:mercados_delivery/src/pages/home_page.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 2), () {
      Get.off(HomePage(), transition: Transition.zoom);
    });
  }

  @override
  void onClose() {
    // Cerrar conexiones a web sockets
    // print("same as dispose");
    super.onClose();
  }
}
