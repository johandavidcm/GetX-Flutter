import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:mercados_delivery/src/controllers/profile_controller.dart';
import 'package:get/route_manager.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${_.user.firstName} ${_.user.lastName}"),
              SizedBox(
                height: 10,
              ),
              CupertinoTextField(
                onChanged: _.onInputTextChange,
              ),
              SizedBox(
                height: 10,
              ),
              CupertinoButton(
                  child: Text("Aceptar"), onPressed: _.goToBackWithData)
            ],
          ),
        ),
      ),
    );
  }
}
