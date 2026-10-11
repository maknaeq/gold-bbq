// Ici l'enum permet d'être plus résilient sur le type de la catégorie à travers la definition de la class et lors de la créations des données dans /data/menu_data.dart
enum DishCategory {
  formules("Formules"),
  entrees("Entrées"),
  barbecue('Barbecue'),
  plats("Plats"),
  desserts("Desserts"),
  boissons("Boissons");

  final String label;

  const DishCategory(this.label);
}

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
  final DishCategory category; // Utilisation de l'enum créé précédemment

  String get imagePath => "assets/images/$image";

  String get formattedPrice => "${price.toStringAsFixed(2).replaceAll(".", ",")} €";
}