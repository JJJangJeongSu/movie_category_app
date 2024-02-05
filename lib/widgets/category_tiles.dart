import 'package:flutter/material.dart';
import 'package:movie_category_app/data/category_data.dart';
import 'package:movie_category_app/widgets/category_tile.dart';

class CategoryTiles extends StatelessWidget {
  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 3 / 2,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) =>
              CategoryTile(category: categories[index])),
    );
  }
}
