
import 'package:flutter/material.dart';
import 'package:pokemon_flutter_app/pages/pokemon_list.dart';
import 'package:pokemon_flutter_app/repository/interface_pokemon_repository.dart';

import '../models/pokemon.dart';

class HomeContainer extends StatelessWidget {

  final IPokemonRepository repository;

  const HomeContainer({
    Key? key,
    required this.repository
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pokemon>>(
      future: repository.getAllPokemons(), // Essencial para chamar a API
      builder: (context, snapshot) {
        // Quando estiver aguardando resposta
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        // Quando tiver dados
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          return PokemonList(list: snapshot.data!);
        }
        // Quando tiver erros
        if (snapshot.hasError) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Ocorreu um erro"))
          );
        }
        return const Text("Meu pokemons");
      },
    );
  }

}