import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() {
    return _MyFormState();
  }

}

class _MyFormState extends State<MyForm> {
  
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Hello World"));
  }

}