
import 'package:flutter/material.dart';
import 'package:pokemon_flutter_app/models/pokemon.dart';

class PokemonDetails extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonDetails({super.key, required this.pokemon});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Image.network(pokemon.image),
          Text(pokemon.name)
        ],
      )
    );
  }



}