import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_list_getx/cart/controller/item_controller.dart';
import 'package:shopping_list_getx/widget/item_list_tile.dart';

class CartPage extends StatelessWidget {
  CartPage({Key? key}) : super(key: key);
  final ItemController itemController = Get.put(ItemController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Items'),
      ),
      body: Container(
        child: Obx(() {
          return ListView.builder(
            itemCount: itemController.itemModels.length,
            itemBuilder: (BuildContext context, int index) {
              bool isActive = itemController.itemModels[index].isActive;
              return ItemListTile(
                title: itemController.itemModels[index].title,
                isInCart: isActive,
                callback: () {
                  itemController.addToCart(index, !isActive);
                },
              );
            },
          );
        }),
      ),
    );
  }
}
