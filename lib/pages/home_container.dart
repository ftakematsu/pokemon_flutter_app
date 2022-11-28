
import 'package:flutter/cupertino.dart';
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
        return const Text("Minha Pokedex");
      },
    );
  }

}