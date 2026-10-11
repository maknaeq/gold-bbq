import "package:flutter/material.dart";
import "../models/dish.dart";
import "dish_card.dart";

class DishList extends StatelessWidget {
  const DishList({
    super.key,
    required this.dishes,
    required this.columns
  });

  final List<Dish> dishes;
  final int columns;

  @override
  Widget build(BuildContext context) {
    final rowCount = (dishes.length / columns).ceil();

    return ListView.builder(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
        itemCount: rowCount,
        itemBuilder: (context, row) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16,
              children: List.generate(columns, (column) {
                final index = row * columns + column;
                return Expanded(
                    child: index < dishes.length ? DishCard(dish: dishes[index]) : const SizedBox(),
                );
              }),
            )
          );
        }
    );
  }
}