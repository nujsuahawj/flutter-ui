// ignore: import_of_legacy_library_into_null_safe
import 'package:all_ui_by_jack/services/remote_services.dart';
import 'package:get/state_manager.dart';
// ignore: unused_import
import 'package:all_ui_by_jack/model/product.dart';

class ProductController extends GetxController {
  // ignore: deprecated_member_use, prefer_collection_literals
  var productList = <Product>[].obs;

  void onInit() {
    fetchProducts();
    super.onInit();
  }

  //fechProducts
  fetchProducts() async {
    var poducts = await RemoteServices.fetchProducts();
    if (poducts != null) {
      productList.value = poducts as List<Product>;
    }
  }
}
