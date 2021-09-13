import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() whenSelected;

  Resposta(this.texto, this.whenSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width) * 0.5,
      child: ElevatedButton(
        child: Text(texto),
        onPressed: whenSelected,
      ),
    ); // não colocar () no nome da função
  }
}
