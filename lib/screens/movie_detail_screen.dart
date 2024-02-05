import 'package:flutter/material.dart';
import 'package:movie_category_app/models/movie.dart';
import 'package:transparent_image/transparent_image.dart';

class MovieDetail extends StatelessWidget {
  MovieDetail(this.movie);

  final Movie movie;

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
        titleSpacing: 0,
        leadingWidth: 40,
        actions: [
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).removeCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Added to Favorite"),
                  ),
                );
              },
              icon: const Icon(Icons.star))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: movie.imageUrl,
              width: MediaQuery.of(context).size.width * 0.8,
            ),
            Text(movie.title),
            Text(movie.director),
            Text(movie.releasedYear.toString()),
            Text(movie.score.toString())
          ],
        ),
      ),
    );
  }
}
