import 'package:flutter/material.dart';
import 'package:pokemon_flutter_app/models/pokemon.dart';
import 'package:pokemon_flutter_app/widgets/pokemon_details.dart';

class PokemonList extends StatelessWidget {

  final List<Pokemon> lista;

  const PokemonList(
    {super.key, required this.lista}
  );

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: lista.length,
      itemBuilder: (context, index) {
        Pokemon pokemon = lista[index];
        
        return ListTile(
          leading: Image.network(pokemon.image),
          title: Text(pokemon.name),
          onTap:() {
            showModalBottomSheet(
              context: context, 
              builder: (context) {
                return PokemonDetails(pokemon: pokemon);
              },
            );
          },
        );
      },
    );
  }

}