import 'package:flutter/material.dart';
import 'my_form.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: const Text("Hello World")),
        backgroundColor: Colors.white,
        body: const MyForm(),
      ),
      
    );
  }
}

