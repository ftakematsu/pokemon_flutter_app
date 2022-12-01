import 'package:flutter/material.dart';
import 'package:pokemon_flutter_app/models/pokemon.dart';

class PokemonInfo extends StatelessWidget {

  final Pokemon pokemon;

  const PokemonInfo({
    Key? key,
    required this.pokemon
  }) : super(key: key);

  TextStyle titulo() {
    return const TextStyle(
      fontSize: 25,
      color: Colors.blue,
      fontWeight: FontWeight.bold
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pokemon.name)),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Image.network(pokemon.image),
            Text(
              "${pokemon.num} - ${pokemon.name}",
              style: titulo(),
            ),
          ],
        ),
      )
    );
  }

}