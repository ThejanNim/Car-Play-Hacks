class ProductModel {
  final int id;
  final String name;
  final String slug;
  final bool featured;
  final String price;
  final String description;
  final int total_sales;
  final int rating_count;
  final String average_rating;
  final List<ProductImageModel> images;

  ProductModel(
      {required this.id,
      required this.name,
      required this.slug,
      required this.featured,
      required this.price,
      required this.description,
      required this.total_sales,
      required this.rating_count,
      required this.average_rating,
      required this.images});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    var list = json['images'] as List;
    List<ProductImageModel> productImagesList =
        list.map((i) => ProductImageModel.fromJson(i)).toList();

    return ProductModel(
        id: json['id'],
        name: json['name'],
        slug: json['slug'],
        featured: json['featured'],
        price: json['price'],
        description: json['description'],
        total_sales: json['total_sales'],
        rating_count: json['rating_count'],
        average_rating: json['average_rating'],
        images: productImagesList);
  }
}

class ProductImageModel {
  final int id;
  final String name;
  final String src;

  ProductImageModel({required this.id, required this.name, required this.src});

  factory ProductImageModel.fromJson(Map<String, dynamic> json) {
    return ProductImageModel(
        id: json['id'], name: json['name'], src: json['src']);
  }
}
