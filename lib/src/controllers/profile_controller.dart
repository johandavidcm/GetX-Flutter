import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:mercados_delivery/src/models/user.dart';

class ProfileController extends GetxController {
  User _user;
  User get user => _user;
  String _inputText = '';

  @override
  void onInit() {
    this._user = Get.arguments["user"] as User;
    super.onInit();
  }

  void onInputTextChange(String text) {
    this._inputText = text;
  }

  void goToBackWithData() {
    if (this._inputText.trim().length > 0) {
      Get.back(result: this._inputText);
    } else {
      Get.dialog(AlertDialog(
        title: Text("Error"),
        content: Text("Ingrese un valor válido"),
        actions: [
          FlatButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Aceptar"))
        ],
      ));
      // showCupertinoModalPopup(
      //   context: Get.overlayContext,
      //   builder: (context) => CupertinoActionSheet(
      //     title: Text("Error"),
      //     cancelButton: CupertinoActionSheetAction(
      //         child: Text("Aceptar"), onPressed: () => Get.back()),
      //   ),
      // );
    }
  }
}
