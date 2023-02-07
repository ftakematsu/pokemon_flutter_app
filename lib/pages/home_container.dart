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
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Ação quando a conexão com a API estiver se estabelecendo

        }

        if (snapshot.hasError) {
          // Ação quando a conexão com a API der erro
          
        }

        if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
          // Ação quando a conexão com a API for concluída e tiver dados

        }

        return const Center(
          child: Text("Minha Pokedex"),
        );
      },
    );
  }

}