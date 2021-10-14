import 'package:shopping_list_getx/cart/model/item_model.dart';

class Repo {
  List<ItemModel> list = [];

  void getList() {
    for (var i = 0; i < 6; i++) {
      list.add(ItemModel(title: 'Item $i', isActive: false));
    }
  }
}
