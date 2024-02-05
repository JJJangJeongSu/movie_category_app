import 'package:flutter/material.dart';
import 'package:movie_category_app/widgets/category_tiles.dart';
import 'package:movie_category_app/widgets/main_drawer.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie Database"),
      ),
      body: CategoryTiles(),
      drawer: MainDrawer(),
    );
  }
}
