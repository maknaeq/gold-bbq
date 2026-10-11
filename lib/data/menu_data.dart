import '../models/dish.dart';

const List<String> categories = [
  "Formules",
  "Entrées",
  "Barbecue",
  "Plats",
  "Desserts",
  "Boissons"
];

const List<Dish> dishes = [

  //Formules
  Dish(
    name: 'Menu Gold BBQ',
    description: 'Assortiment de viandes à griller, banchan et riz à volonté.',
    price: 32,
    image: 'menu_gold_bbq.jpg',
    category: DishCategory.formules,
  ),
  Dish(
    name: 'Formule Dosirak',
    description: 'Le plateau du midi : viande marinée, riz et accompagnements.',
    price: 16.5,
    image: 'formule_dosirak.jpg',
    category: DishCategory.formules,
  ),
  Dish(
    name: 'Menu Découverte',
    description: 'Soupe, riz et six banchan pour goûter à tout.',
    price: 24,
    image: 'menu_decouverte.jpg',
    category: DishCategory.formules,
  ),

  // Entrées
  Dish(
    name: 'Mandu',
    description: 'Raviolis coréens au porc et à la ciboule, cuits à la vapeur.',
    price: 8,
    image: 'mandu.jpg',
    category: DishCategory.entrees,
  ),
  Dish(
    name: 'Pajeon',
    description: 'Galette croustillante à la ciboule, sauce soja vinaigrée.',
    price: 9.5,
    image: 'pajeon.jpg',
    category: DishCategory.entrees,
  ),
  Dish(
    name: 'Tteokbokki',
    description: 'Gâteaux de riz moelleux dans une sauce pimentée.',
    price: 9,
    image: 'tteokbokki.jpg',
    category: DishCategory.entrees,
  ),
  Dish(
    name: 'Banchan',
    description:
    'Assortiment de petits accompagnements, dont le kimchi maison.',
    price: 7,
    image: 'banchan.jpg',
    category: DishCategory.entrees,
  ),

  // Barbecue
  Dish(
    name: 'Bulgogi',
    description: 'Fines tranches de bœuf marinées au soja et à la poire.',
    price: 21,
    image: 'bulgogi.jpg',
    category: DishCategory.barbecue,
  ),
  Dish(
    name: 'Galbi',
    description: 'Travers de bœuf marinés, grillés à table.',
    price: 26,
    image: 'galbi.jpg',
    category: DishCategory.barbecue,
  ),
  Dish(
    name: 'Samgyeopsal',
    description:
    'Poitrine de porc grillée, à rouler dans une feuille de salade.',
    price: 19,
    image: 'samgyeopsal.jpg',
    category: DishCategory.barbecue,
  ),
  Dish(
    name: 'Dak-galbi',
    description:
    'Poulet épicé sauté avec chou, patate douce et gâteaux de riz.',
    price: 18.5,
    image: 'dak_galbi.jpg',
    category: DishCategory.barbecue,
  ),

  // Plats
  Dish(
    name: 'Bibimbap',
    description:
    'Riz, légumes, bœuf et œuf, servis dans un bol en pierre chaud.',
    price: 15.5,
    image: 'bibimbap.jpg',
    category: DishCategory.plats,
  ),
  Dish(
    name: 'Kimchi-jjigae',
    description: 'Ragoût de kimchi au tofu et au porc, servi bouillant.',
    price: 14.5,
    image: 'kimchi_jjigae.jpg',
    category: DishCategory.plats,
  ),
  Dish(
    name: 'Japchae',
    description: 'Nouilles de patate douce sautées aux légumes et au sésame.',
    price: 14,
    image: 'japchae.jpg',
    category: DishCategory.plats,
  ),
  Dish(
    name: 'Poulet frit coréen',
    description: 'Double friture, sauce sucrée-pimentée et graines de sésame.',
    price: 16,
    image: 'poulet_frit.jpg',
    category: DishCategory.plats,
  ),

  // Desserts
  Dish(
    name: 'Patbingsu',
    description: 'Glace pilée au lait, haricots rouges sucrés.',
    price: 8.5,
    image: 'patbingsu.jpg',
    category: DishCategory.desserts,
  ),
  Dish(
    name: 'Hotteok',
    description: 'Crêpes épaisses fourrées au sucre brun et à la cannelle.',
    price: 6.5,
    image: 'hotteok.jpg',
    category: DishCategory.desserts,
  ),
  Dish(
    name: 'Yakgwa',
    description: 'Biscuits au miel et au gingembre.',
    price: 6,
    image: 'yakgwa.jpg',
    category: DishCategory.desserts,
  ),

  // Boissons
  Dish(
    name: 'Soju',
    description:
    'L\'alcool de riz coréen, servi très frais. La bouteille de 36 cl.',
    price: 12,
    image: 'soju.jpg',
    category: DishCategory.boissons,
  ),
  Dish(
    name: 'Sikhye',
    description: 'Boisson douce au riz et au malt, sans alcool.',
    price: 4.5,
    image: 'sikhye.jpg',
    category: DishCategory.boissons,
  ),
  Dish(
    name: 'Makgeolli',
    description: 'Vin de riz laiteux et légèrement pétillant. Le bol.',
    price: 6,
    image: 'makgeolli.jpg',
    category: DishCategory.boissons,
  ),
];