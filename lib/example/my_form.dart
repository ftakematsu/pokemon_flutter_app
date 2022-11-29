import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() {
    return _MyFormState();
  }

}

class _MyFormState extends State<MyForm> {
  
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: 
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(), // OutlineInputBorder(),
                    labelText: 'Qual seu nome?',
                  ),
                  controller: myController,
                ),
                ElevatedButton(
                  onPressed: () {
                    final snackBar = SnackBar(
                      content: Text('Olá ${myController.text}'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }, 
                  child: const Text("Enviar")
                )
            ],
          ),
      )
    );
  }

}