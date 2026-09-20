import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/models/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getCategoriesProducts({
    required String categoryName,
  }) async {
    http.Response response = await http.get(
      Uri.parse('https://dummyjson.com/products/category/$categoryName'),
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);

      List<ProductModel> productList = [];

      for (int i = 0; i < data['products'].length; i++) {
        productList.add(ProductModel.fromJson(data['products'][i]));
      }
      return productList;
    } else
      throw Exception(
        'There is a problem with status code ${response.statusCode}',
      );
  }
}
