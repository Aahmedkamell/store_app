import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_field.dart';

class UpdateProductPage extends StatelessWidget {
  UpdateProductPage({super.key});
  static String id = 'update product';
  String? productName, desc, image;
  String? price;
  late ProductModel product;
  @override
  Widget build(BuildContext context) {
    product = ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Product', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100),
              CustomTextField.CustomTextField(
                onChanged: (data) {
                  productName = data;
                },
                hintText: 'Product Name',
              ),
              SizedBox(height: 10),
              CustomTextField.CustomTextField(
                onChanged: (data) {
                  desc = data;
                },
                hintText: 'Description',
              ),
              SizedBox(height: 10),
              CustomTextField.CustomTextField(
                textInputType: TextInputType.number,
                onChanged: (data) {
                  price = data;
                },
                hintText: 'Price',
              ),
              SizedBox(height: 10),
              CustomTextField.CustomTextField(
                onChanged: (data) {
                  image = data;
                },
                hintText: 'Image',
              ),
              SizedBox(height: 50),
              CustomButton(
                text: 'Update',
                onTap: () {
                  UpdateProductService().updateProduct(
                    id: product.id,
                    title: productName!,
                    price: price!,
                    desc: desc!,
                    image: image!,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
