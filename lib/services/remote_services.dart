// ignore: unused_import
import 'package:http/http.dart' as http;
import 'package:all_ui_by_jack/model/product.dart';

class RemoteServices{
  static var client = http.Client();
  static Future<Product?> fetchProducts() async {
    var response = await client.get(Uri.parse(
        'https://www.we-serve.online/api/martpai/productbycat/10'));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        return productFromJson(jsonString);
      } else {
        return null;
      }
  }
}