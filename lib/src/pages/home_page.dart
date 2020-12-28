import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:mercados_delivery/src/controllers/global_controller.dart';
import 'package:mercados_delivery/src/controllers/home_controller.dart';
import 'package:mercados_delivery/src/pages/home_pages_widgets/home_list.dart';
import 'package:mercados_delivery/src/widgets/product_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              GetBuilder<GlobalController>(
                  id: 'favorites',
                  builder: (_) => FlatButton(
                        child: Text("Favoritos (${_.favorites.length})"),
                        onPressed: () {},
                      ))
            ],
          ),
          body: ProductList(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _.increment();
            },
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
