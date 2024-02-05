import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(context) {
    return const Drawer(
      child: Column(
        children: [DrawerHeader(child: Text("Hello"))],
      ),
    );
  }
}
