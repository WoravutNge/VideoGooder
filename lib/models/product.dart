class Product {
  final String id;
  final String name;
  final double price;
  final String description;
  bool isFavorite;
  final String imageUrl;
  final String developer;
  final String publisher;
  final String releaseDate;
  final List<String> genre;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.isFavorite,
    required this.imageUrl,
    required this.developer,
    required this.publisher,
    required this.releaseDate,
    required this.genre,
  });
}
