import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_category_app/data/movie_data.dart';
import 'package:movie_category_app/models/movie.dart';
import 'package:movie_category_app/provider/filters_provider.dart';

final movieDataProvider = Provider<List<Movie>>((ref) => movies);

final availableMovieProvider = Provider((ref) {
  final totalMovie = ref.watch(movieDataProvider);
  final currentFilter = ref.watch(filterNotifierProvider);
  final filteredMovie = totalMovie.where((element) {
    if (currentFilter["onlyDubbed"]! && !element.isDubbed) {
      return false;
    } else if (currentFilter["kidMode"]! && element.isRestricted) {
      return false;
    } else {
      return true;
    }
  });

  return filteredMovie;
});
