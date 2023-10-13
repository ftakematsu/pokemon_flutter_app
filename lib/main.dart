import 'package:flutter/material.dart';
import 'package:pokemon_flutter_app/pages/home_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pokedex",
      theme: ThemeData(
        useMaterial3: true
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Pokedex")),
        backgroundColor: Colors.white,
        body: const HomeContainer(),
      )
    );
  }
  
}