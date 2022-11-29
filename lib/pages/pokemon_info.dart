import 'package:flutter/material.dart';
import 'package:pokemon_flutter_app/models/pokemon.dart';

import '../consts/api.dart';

class PokemonInfo extends StatelessWidget {

  final Pokemon pokemon;

  const PokemonInfo({
    Key? key,
    required this.pokemon
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pokemon.name)),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Image.network(pokemon.image),
            Text(pokemon.name, style: const TextStyle(fontSize: 25, color: Colors.blueAccent, fontWeight: FontWeight.bold),)
          ],
        )
      )
    );
  }


}