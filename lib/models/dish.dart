class Dish {

  const Dish({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.category
  });

  final String name;
  final String description;
  final double price;
  final String image;
  final String category;

  String get imagePath => 'assets/images/$image';

  String get formattedPrice => '${price.toStringAsFixed(2).replaceAll('.', ',')}€';
}