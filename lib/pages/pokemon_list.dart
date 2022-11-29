import 'package:flutter/material.dart';
import 'package:pokemon_flutter_app/consts/api.dart';
import 'package:pokemon_flutter_app/pages/pokemon_info.dart';

import '../models/pokemon.dart';


class PokemonList extends StatelessWidget {
  
  final List<Pokemon> list;
  
  const PokemonList({
    Key? key,
    required this.list
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length, 
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.network("${Api.pokemonPic}${list[index].num}.png"),
          title: Text("${list[index].name} "),
          subtitle: Text(list[index].getTypeString()),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PokemonInfo(pokemon: list[index],)),
              );
          },
        );
      }
    );
  }


}