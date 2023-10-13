import 'package:pokemon_flutter_app/models/pokemon.dart';
import 'package:pokemon_flutter_app/repository/pokemon_repository.dart';
import '../repository/interface_pokemon_repository.dart';

class PokemonService {
  
  late IPokemonRepository repository;

  PokemonService() {
    repository = PokemonRepository();
  }

  /// Implementar opções de filtros, busca por nome, etc
  Future<List<Pokemon>> getPokemonList() {
    Future<List<Pokemon>> pokemonList = repository.getAllPokemons();
    return pokemonList;
  }

}