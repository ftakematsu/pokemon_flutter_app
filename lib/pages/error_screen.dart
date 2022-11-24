import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {

  final String mensagemErro;

  const ErrorScreen({
    Key? key,
    required this.mensagemErro
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        Center(
          child: Text(mensagemErro),
        )
    );
  }
  
}