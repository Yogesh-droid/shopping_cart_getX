import 'package:flutter/material.dart';
import 'package:shopping_list_getx/cart/views/cart_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CartPage(),
    );
  }
}
