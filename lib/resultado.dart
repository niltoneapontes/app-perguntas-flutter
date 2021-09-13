import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String texto;
  final int pontuacao;
  final void Function() reiniciarQuestionario;

  Resultado(this.texto, this.pontuacao, this.reiniciarQuestionario);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text('$texto sua pontuação foi: $pontuacao',
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center)),
          ElevatedButton(
              child: Text('Reiniciar'), onPressed: reiniciarQuestionario)
        ],
      ),
    );
  }
}
