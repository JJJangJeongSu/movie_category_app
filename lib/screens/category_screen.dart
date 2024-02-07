import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_category_app/models/movie.dart';
import 'package:movie_category_app/provider/movie_data_provider.dart';
import 'package:movie_category_app/widgets/movie_tile.dart';
import 'package:movie_category_app/widgets/movie_tiles.dart';

class CategoryScreen extends ConsumerWidget {
  const CategoryScreen({super.key, required this.currentCategory});

  final String currentCategory;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movieData = ref.watch(availableMovieProvider);
    final currentMovieData = movieData
        .where((element) => element.genre.contains(currentCategory))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(currentCategory),
      ),
      body: MovieTiles(currentMovieData: currentMovieData),
    );
  }
}
