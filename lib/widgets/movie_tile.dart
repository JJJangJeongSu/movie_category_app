import 'package:flutter/material.dart';
import 'package:movie_category_app/models/movie.dart';
import 'package:movie_category_app/screens/movie_detail_screen.dart';
import 'package:transparent_image/transparent_image.dart';

class MovieTile extends StatelessWidget {
  const MovieTile(this.movie);

  final Movie movie;

  @override
  Widget build(context) {
    return GridTile(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => MovieDetail(movie),
            ),
          );
        },
        child: Card(
          clipBehavior: Clip.hardEdge,
          child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage, image: movie.imageUrl),
        ),
      ),
    );
  }
}
