import 'package:flutter/material.dart';
import 'package:movie_category_app/models/movie_category.dart';
import 'package:movie_category_app/screens/category_screen.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({required this.category});

  final MovieCategory category;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 10,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.black.withOpacity(0.15),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return CategoryScreen(currentCategory: category.title);
                }),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(13),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    category.color.withOpacity(0.95),
                    category.color.withOpacity(0.60)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Text(category.title),
            ),
          ),
        ),
      ),
    );
  }
}
