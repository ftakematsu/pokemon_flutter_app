import 'package:flutter/material.dart';
import 'package:pokemon_flutter_app/services/pokemon_service.dart';

import '../models/pokemon.dart';

class HomeContainer extends StatefulWidget {

  const HomeContainer({super.key});

  @override
  State<HomeContainer> createState() {
    return _HomeContainer();
  }

}

class _HomeContainer extends State<HomeContainer> {

  late PokemonService service;

  @override
  initState() {
    super.initState();
    service = PokemonService();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pokemon>>(
      future: service.getPokemonList(), // Essencial para chamar a API
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