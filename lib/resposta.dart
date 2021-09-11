import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  String texto;

  Resposta(this.texto);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text(texto),
        onPressed: null); // não colocar () no nome da função
  }
}
