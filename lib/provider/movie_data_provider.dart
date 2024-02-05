import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_category_app/data/movie_data.dart';
import 'package:movie_category_app/models/movie.dart';

final movieDataProvider = Provider<List<Movie>>((ref) => movies);
