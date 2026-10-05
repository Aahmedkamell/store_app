import 'package:flutter/material.dart';
import 'package:store_app/views/home_view.dart';
import 'package:store_app/views/update_product_page.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeView.id: (context) => const HomeView(),
        UpdateProductPage.id:(context) => const UpdateProductPage(),
      },
      initialRoute: HomeView.id,
    );
  }
}