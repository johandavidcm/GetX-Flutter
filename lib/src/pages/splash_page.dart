import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:mercados_delivery/src/controllers/splash_controller.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        dispose: (state) {
          // Cerrar conexiones a web sockets
          print("Normal dispose");
        },
        init: SplashController(),
        builder: (_) => Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ));
  }
}
