class ProductModel {
  final int id;
  final String name;
  final String slug;
  final bool featured;
  final String price;

  ProductModel(
      {required this.id,
      required this.name,
      required this.slug,
      required this.featured,
      required this.price});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
        id: json['id'],
        name: json['name'],
        slug: json['slug'],
        featured: json['featured'],
        price: json['price']);
  }
}
