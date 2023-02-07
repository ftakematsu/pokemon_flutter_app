import 'package:flutter/material.dart';
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
  
  List<Pokemon> list = [];
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();
    list = listaFiltrada();     
  }

  List<Pokemon> listaFiltrada() {
    List<Pokemon> outputList = list.where((pokemon) => pokemon.name.toLowerCase().contains(myController.text.toLowerCase())).toList();
    return outputList;
  }

  Expanded areaListaPokemons() {
    list = listaFiltrada();
    if (list.isEmpty) {
      return Expanded(
        child: Text("Não foi encontrado nenhum Pokemom com o nome ${myController.text}"),
      );
    }
    else {
        return Expanded(
                child: ListView.builder(
                  itemCount: list.length, 
                  itemBuilder: (context, index) {
                    return ListTile(
                      tileColor: Colors.blueAccent,
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
              );
    }
    
  }

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
                    labelText: 'Nome do Pokemon',
                  ),
                  controller: myController,
                  onChanged: (text) {
                    setState(() {
                      print('Você digitou: ${myController.text}');
                    });
                  },
                ),
                areaListaPokemons()
            ],
          ),
      );
  }
}
