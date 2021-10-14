import 'package:get/get.dart';
import 'package:shopping_list_getx/cart/model/item_model.dart';
import 'package:shopping_list_getx/repo/repo.dart';

class ItemController extends GetxController {
  var isActive = false.obs;

  var itemModels = <ItemModel>[].obs;
  Repo repo = Repo();

  void getAllItems() {
    itemModels.clear();
    itemModels.addAll(repo.list);
  }

  void addToCart(int index, bool isActive) {
    repo.list.elementAt(index).isActive = isActive;
    getAllItems();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    repo.getList();
    getAllItems();
  }
}
