import 'package:flutter/material.dart';
import 'package:my_awesome_namer/providers.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    if (appState.favorites.isEmpty) {
      return Center(
        child: Text("No favorites yet"),
      );
    }

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("You have `${appState.favorites.length} favorites"),
        ),
        ...appState.favorites.map((pair) => ListTile(
              leading: Icon(Icons.favorite),
              title: Text(pair.asLowerCase),
            )),
      ],
    );
  }
}
