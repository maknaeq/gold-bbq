import "package:flutter/material.dart";
import "../models/dish.dart";

class CategoryBar extends StatelessWidget {
  const CategoryBar({
    super.key,
    required this.categories,
    required this.selected,
    required this.onSelected
  });

  final List<DishCategory> categories;
  final DishCategory selected;
  final Function(DishCategory) onSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
        child: Row(
          spacing: 8,
          children: List.generate(categories.length, (index) {
            final category = categories[index];
            return ChoiceChip(
              label: Text(category.label), //utilisation grace a l'enum
              selected: category == selected,
              onSelected: (value) => onSelected(category)
            );
          }),
        )
      )
    );
  }
}