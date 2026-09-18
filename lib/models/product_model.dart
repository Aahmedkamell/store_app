class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String thumbnail;
  final double rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.thumbnail,
    required this.rating,
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData['id'],
      title: jsonData['title'],
      price: jsonData['price'],
      description: jsonData['description'],
      thumbnail: jsonData['thumbnail'],
      rating: jsonData['rating'],
    );
  }
}
