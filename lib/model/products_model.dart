class ProductsModel {
  final int id;
  final String name;
  final String description;
  final double price;
  final String history;
  final bool disponible;
  final String imageUrl;
  const ProductsModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.history,
    required this.disponible,
    required this.imageUrl,
  });
}
