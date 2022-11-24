
import 'package:flutter/cupertino.dart';
import 'package:pokemon_flutter_app/pages/error_screen.dart';
import 'package:pokemon_flutter_app/pages/loading.dart';
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
        // Se a tela estiver carregando
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Loading();
        }
        // Conexão estabelecida e tem dados retornados
        if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
          //print(snapshot.data!);
          return PokemonList(list: snapshot.data!);
        }
        if (snapshot.hasError) {
          final String mensagem = snapshot.error.toString();
          return ErrorScreen(mensagemErro: "Erro: $mensagem");
        }
        //
        return const Text("Minha Pokedex");
      },
    );
  }

}