import 'package:flutter/material.dart';
import 'package:pokemon_flutter_app/pages/loading.dart';

import '../models/pokemon.dart';

class PokemonList extends StatelessWidget {

  final List<Pokemon> list;

  const PokemonList({
    Key? key,
    required this.list
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: list.length, // Tamanho da lista
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("${list[index].num} ${list[index].name}"),
            subtitle: Text(list[index].getTypeString()),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Loading()),
              );
            },
          ); // Item de uma lista
        },
      ),
    );
  }

}