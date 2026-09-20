import 'dart:convert';

import 'package:http/http.dart' as http;

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    http.Response response = await http.get(
      Uri.parse('https://dummyjson.com/products/categories'),
    );
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);

      return data;
    } else
      throw Exception(
        'There is a problem with status code${response.statusCode}',
      );
  }
}
