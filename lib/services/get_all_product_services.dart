
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class AllProductServices {
  Future<List<ProductModel>> getAllProducts() async {
      Map<String, dynamic> data = await Api().get(url: 'https://dummyjson.com/products', token: '');

  

    List<ProductModel> productsList = [];
    for (int i = 0; i < data['products'].length; i++) {
      productsList.add(ProductModel.fromJson(data['products'][i]));
    }
    return productsList;
  }
}
