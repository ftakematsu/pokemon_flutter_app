import 'package:flutter/material.dart';
import 'package:pokemon_flutter_app/models/pokemon.dart';

class PokemonDetails extends StatelessWidget {

  final Pokemon pokemon;

  const PokemonDetails({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            pokemon.image
          ),
          Text(
            "${pokemon.num} - ${pokemon.name}",
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
          Text("${pokemon.id + 10}")

        ],
      )
    );
  }

}