import 'package:flutter/material.dart';
import 'package:pokemon_flutter_app/pages/pokemon_info.dart';

import '../models/pokemon.dart';

class PokemonList extends StatefulWidget {
  final List<Pokemon> list;

  const PokemonList({
    Key? key,
    required this.list
  }) : super(key: key);
  
  @override
  State<PokemonList> createState() {
    return PokemonListState();
  }

}

/// Widget de estado - onde vai ser implementado o layout
class PokemonListState extends State<PokemonList> {

  late List<Pokemon> list;
  TextEditingController myController = TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    list = widget.list;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Nome do Pokemon",
              icon: Icon(Icons.search)
            ),
            controller: myController,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.network(list[index].image),
                  title: Text("${list[index].name} "),
                  subtitle: Text(list[index].getTypeString()),
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => PokemonInfo(pokemon: list[index]),
                      ),
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }

}






