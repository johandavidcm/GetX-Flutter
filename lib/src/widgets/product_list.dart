import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mercados_delivery/src/controllers/global_controller.dart';
import 'package:mercados_delivery/src/models/product.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final controller = Get.find<GlobalController>();
    return GetBuilder<GlobalController>(
      id: 'products',
      builder: (_) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final Product product = _.products[index];
            return ListTile(
              title: Text(product.name),
              subtitle: Text(product.price.toString()),
              trailing: IconButton(
                icon: Icon(Icons.favorite),
                color: product.isFavorite ? Colors.blue : Colors.grey,
                onPressed: () {
                  _.onFavorite(index, !product.isFavorite);
                },
              ),
            );
          },
          itemCount: _.products.length,
        );
      },
    );
  }
}
