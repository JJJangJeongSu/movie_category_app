import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_category_app/models/movie.dart';

class FavoriteMoviesProvider extends StateNotifier<List<Movie>> {
  FavoriteMoviesProvider() : super([]);

  bool toggleFavorite(Movie targetMovie) {
    if (state.contains(targetMovie)) {
      state = [...state.where((element) => element != targetMovie)];
      return false;
    } else {
      state = [...state, targetMovie];
      return true;
    }
  }
}

final favoriteMoviesProvider =
    StateNotifierProvider<FavoriteMoviesProvider, List<Movie>>(
  (ref) => FavoriteMoviesProvider(),
);
