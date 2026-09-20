import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getCategoriesProducts({
    required String categoryName,
  }) async {
    Map<String, dynamic> data = await Api().get(
      url: 'https://dummyjson.com/products/category/$categoryName',
    );

    List<ProductModel> productList = [];

    for (int i = 0; i < data['products'].length; i++) {
      productList.add(ProductModel.fromJson(data['products'][i]));
    }
    return productList;
  }
}
