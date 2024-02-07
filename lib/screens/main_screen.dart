import 'package:flutter/material.dart';
import 'package:movie_category_app/widgets/favorite_movie_tiles.dart';
import 'package:movie_category_app/widgets/category_tiles.dart';
import 'package:movie_category_app/widgets/main_drawer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  void clickBottomNavigationItem(int val) {
    setState(() {
      currentIndex = val;
    });
  }

  @override
  Widget build(context) {
    Widget activeMainWidget = CategoryTiles();
    if (currentIndex == 0) {
      activeMainWidget = CategoryTiles();
    } else {
      activeMainWidget = FavoriteMovieTiles();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(currentIndex == 0 ? "Movie Database" : "Favorites"),
      ),
      body: activeMainWidget,
      drawer: MainDrawer(),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) => clickBottomNavigationItem(value),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Movies"),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favorites")
          ]),
    );
  }
}
