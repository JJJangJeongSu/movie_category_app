import 'package:flutter/material.dart';
import 'package:movie_category_app/data/category_data.dart';
import 'package:movie_category_app/widgets/category_tile.dart';

class CategoryTiles extends StatelessWidget {
  @override
  Widget build(context) {
    return GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 3 / 2,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) =>
            CategoryTile(category: categories[index]));
  }
}
