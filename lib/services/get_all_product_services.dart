import 'dart:convert';

import 'package:store_app/models/product_model.dart';
import 'package:http/http.dart' as http;

class AllProductServices {
  Future<List<ProductModel>> getAllProducts() async {
    http.Response response = await http.get(
      Uri.parse('https://dummyjson.com/products'),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);

      List<ProductModel> productsList = [];
      for (int i = 0; i < data['products'].length; i++) {
        productsList.add(ProductModel.fromJson(data['products'][i]));
      }
      return productsList;
    } else
      throw Exception(
        'There is a problem with status code${response.statusCode}',
      );
  }
}
