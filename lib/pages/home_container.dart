
import 'package:flutter/material.dart';
import 'package:pokemon_flutter_app/pages/pokemon_list.dart';
import 'package:pokemon_flutter_app/repository/interface_pokemon_repository.dart';

import '../models/pokemon.dart';
import 'loading.dart';

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
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Loading();
        }

        if (snapshot.hasError) {
          const snackBar = SnackBar(
            content: Text('Ocorreu um erro'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }

        if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
          return PokemonList(list: snapshot.data!);
        }

        return const Center(
          child: Text("Minha Pokedex"),
        );
      },
    );
  }

}