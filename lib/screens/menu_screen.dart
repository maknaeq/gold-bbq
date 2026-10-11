import "package:flutter/material.dart";
import "../data/menu_data.dart";
import "../models/dish.dart";
import "../widgets/category_bar.dart";
import "../widgets/dish_list.dart";

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();

}

class _MenuScreenState extends State<MenuScreen> {
  DishCategory _selected = DishCategory.values.first;

  void _selectCategory(DishCategory category) {
    setState(() {
      _selected = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Dish> visibleDishes = [];
    for(final dish in dishes) {
      if(dish.category == _selected) {
        visibleDishes.add(dish);
      }
    }

    final isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: AppBar(title: const Text("Menu du restaurant Gold BBQ")),
      body: SafeArea(
          child: Column(
            children: [
              CategoryBar(categories: DishCategory.values, selected: _selected, onSelected: _selectCategory),
              Expanded(
                  child: DishList(
                      key: ValueKey(_selected),
                      dishes: visibleDishes,
                      columns: isLandscape ? 2 : 1
                  )
              )
            ],
          )
      )
    );
  }
}

