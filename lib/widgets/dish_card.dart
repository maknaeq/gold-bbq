import "package:flutter/material.dart";
import "../models/dish.dart";

class DishCard extends StatelessWidget {
  const DishCard({super.key, required this.dish});

  final Dish dish;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      elevation: 0,
      color: Colors.transparent,
      margin: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: AspectRatio(
              aspectRatio:4/3,
              child: Image.asset(dish.imagePath, fit: BoxFit.cover)
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 12, 4, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        dish.name,
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      dish.formattedPrice,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: colors.primary,
                      ),
                    )
                  ]
                ),
                const SizedBox(height: 4),
                Text(
                  dish.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    color: colors.onSurfaceVariant,
                  ),
                )
              ],
            )
          )
        ],
      ),
    );
  }
}