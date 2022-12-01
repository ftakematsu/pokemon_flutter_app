import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_flutter_app/pages/home_container.dart';
import 'package:pokemon_flutter_app/repository/pokemon_repository.dart';

import 'example/hello_world.dart';

void main() {
  //runApp(const HelloWorld());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pokedex",
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(title: const Text("Pokedex")),
        backgroundColor: Colors.white,
        body: HomeContainer(
          repository: PokemonRepository(dio: Dio())
        ),
      )
    );
  }
  
}