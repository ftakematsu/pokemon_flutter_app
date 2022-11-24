import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:pokemon_flutter_app/models/pokemon.dart';
import 'package:pokemon_flutter_app/repository/interface_pokemon_repository.dart';
import '../consts/api.dart';

class PokemonRepository implements IPokemonRepository {

  final Dio dio;

  PokemonRepository({
    required this.dio
  });

  @override
  Future<List<Pokemon>> getAllPokemons() async {
    final Response response = await dio.get(
      Api.allPokemonApi
    );
    // Map<String, dynamic>
    final json = jsonDecode(response.data);
    final list = json['pokemon'] as List<dynamic>; // Lista de Pokemons, ainda no formato Map
    // Método para converter a lista de Map em List<Pokemon>
    return list.map(
      (e) => Pokemon.fromMap(e)
    ).toList();
  }
  
}
