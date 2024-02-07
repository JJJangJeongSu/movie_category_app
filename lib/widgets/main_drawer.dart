import 'package:flutter/material.dart';
import 'package:movie_category_app/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.amberAccent),
            margin: const EdgeInsets.all(0),
            child: Container(
              width: double.infinity,
              child: Text("Hello"),
              padding: const EdgeInsets.all(16),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();
            },
            splashColor: Colors.black.withOpacity(0.3),
            leading: const Icon(Icons.movie),
            title: Text("Movies"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return FilterScreen();
                }),
              );
            },
            splashColor: Colors.black.withOpacity(0.3),
            leading: const Icon(Icons.filter_list),
            title: Text("Filters"),
          )
        ],
      ),
    );
  }
}
