import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_category_app/provider/movie_data_provider.dart';
import 'package:movie_category_app/widgets/movie_tile.dart';

class CategoryScreen extends ConsumerWidget {
  const CategoryScreen({super.key, required this.currentCategory});

  final String currentCategory;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movieData = ref.watch(movieDataProvider);
    final currentMovieData = movieData
        .where((element) => element.genre.contains(currentCategory))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(currentCategory),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.675,
            crossAxisSpacing: 15,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) => MovieTile(currentMovieData[index]),
        itemCount: currentMovieData.length,
      ),
    );
  }
}
