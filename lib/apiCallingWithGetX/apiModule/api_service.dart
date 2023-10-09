import 'package:get_x/apiCallingWithGetX/productModule/models/product_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static var client = http.Client();

  static Future<List<ProductModel>> fetchProducts() async {
    var response = await client.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    if(response.statusCode == 200) {
      var json = response.body;
      return productModelFromJson(json);
    }
    else {
      throw Exception('Failed to fetch products: ${response.statusCode}');
    }
  }
}

