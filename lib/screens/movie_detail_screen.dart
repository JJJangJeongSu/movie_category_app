import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_category_app/models/movie.dart';
import 'package:movie_category_app/provider/favorite_movie_provider.dart';
import 'package:transparent_image/transparent_image.dart';

class MovieDetail extends ConsumerStatefulWidget {
  MovieDetail(this.movie);

  final Movie movie;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _MovieDetailState();
  }
}

class _MovieDetailState extends ConsumerState<MovieDetail> {
  @override
  Widget build(context) {
    bool isFavorite = ref.watch(favoriteMoviesProvider).contains(widget.movie);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.movie.title),
        titleSpacing: 0,
        leadingWidth: 40,
        actions: [
          IconButton(
              onPressed: () {
                bool isAdded = ref
                    .watch(favoriteMoviesProvider.notifier)
                    .toggleFavorite(widget.movie);
                ScaffoldMessenger.of(context).removeCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(isAdded
                        ? "Added to Favorites!"
                        : "Removed from Favorites!"),
                    duration: Durations.medium1,
                  ),
                );
              },
              isSelected: false,
              icon: Icon(
                Icons.star,
                color: isFavorite ? Colors.amber : Colors.grey,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: widget.movie.imageUrl,
              width: MediaQuery.of(context).size.width * 0.8,
            ),
            Text(widget.movie.title),
            Text(widget.movie.director),
            Text(widget.movie.releasedYear.toString()),
            Text(widget.movie.score.toString())
          ],
        ),
      ),
    );
  }
}
