
import 'package:flutter/material.dart';
import 'package:pokemon_flutter_app/models/pokemon.dart';

class PokemonList extends StatefulWidget {

  final List<Pokemon> pokemonList;

  const PokemonList({super.key, required this.pokemonList});

  @override
  State<StatefulWidget> createState() {
    return _PokemonList();
  }

}

class _PokemonList extends State<PokemonList> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          TextFormField(),
          const Divider(),
          Expanded(
            child: 
            ListView.builder(
              itemCount: widget.pokemonList.length,
              itemBuilder: (context, index) {

                Pokemon pokemon = widget.pokemonList[index];

                return ListTile(
                  leading: Image.network(pokemon.image),
                  title: Text(pokemon.name),
                );
              }
            )
          )
        ],
      )
    );
  }


}
