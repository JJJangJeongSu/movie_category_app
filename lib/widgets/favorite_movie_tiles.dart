import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_category_app/provider/favorite_movie_provider.dart';
import 'package:movie_category_app/widgets/movie_tiles.dart';

class FavoriteMovieTiles extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _FavoritesScreenState();
  }
}

class _FavoritesScreenState extends ConsumerState {
  @override
  Widget build(BuildContext context) {
    final favoriteMovies = ref.watch(favoriteMoviesProvider);
    return favoriteMovies.isEmpty
        ? const Center(child: Text("Try Adding your Favorites!"))
        : MovieTiles(currentMovieData: favoriteMovies);
  }
}
