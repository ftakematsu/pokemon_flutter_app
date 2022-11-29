import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokemon_flutter_app/consts/api.dart';
import 'package:pokemon_flutter_app/pages/pokemon_info.dart';

import '../models/pokemon.dart';

class PokemonList extends StatefulWidget {

  final List<Pokemon> list;

  const PokemonList({    
    Key? key,
    required this.list
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PokemonListState();
  }

}

class PokemonListState extends State<PokemonList> {
  
  late List<Pokemon> list;
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    list = widget.list;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(), // OutlineInputBorder(),
                    labelText: 'Qual seu nome?',
                  ),
                  controller: myController,
                ),
                Expanded(
                  child: ListView.builder(
                  itemCount: list.length, 
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.network("${Api.pokemonPic}${list[index].num}.png"),
                      title: Text("${list[index].name} "),
                      subtitle: Text(list[index].getTypeString()),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PokemonInfo(pokemon: list[index])),
                          );
                      },
                    );
                  }
                ),
                )
            ],
          ),
      );
  }


}

/*

ListView.builder(
          itemCount: list.length, 
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network("${Api.pokemonPic}${list[index].num}.png"),
              title: Text("${list[index].name} "),
              subtitle: Text(list[index].getTypeString()),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PokemonInfo(pokemon: list[index])),
                  );
              },
            );
          }
        )
 */