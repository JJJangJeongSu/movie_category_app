import 'package:flutter/material.dart';
import 'package:movie_category_app/models/movie.dart';
import 'package:movie_category_app/widgets/movie_tile.dart';

class MovieTiles extends StatelessWidget {
  const MovieTiles({
    super.key,
    required this.currentMovieData,
  });

  final List<Movie> currentMovieData;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.675,
          crossAxisSpacing: 15,
          mainAxisSpacing: 10),
      itemBuilder: (context, index) => MovieTile(currentMovieData[index]),
      itemCount: currentMovieData.length,
    );
  }
}
