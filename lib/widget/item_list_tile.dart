import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class ItemListTile extends StatelessWidget {
  const ItemListTile(
      {Key? key,
      required this.title,
      required this.isInCart,
      required this.callback})
      : super(key: key);
  final String title;
  final bool isInCart;
  final Callback callback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: callback,
      title: Text(title),
      trailing: !isInCart
          ? Icon(Icons.shopping_cart_outlined)
          : Icon(Icons.remove_shopping_cart_outlined),
    );
  }
}
