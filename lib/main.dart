import 'package:flutter/material.dart';

// main() {
//   runApp(new PerguntaApp());
// }

main() => runApp(
    new PerguntaApp()); //recomenda-se usar arrow function aqui (em flutter só pode ter uma linha na arrow)

class PerguntaApp extends StatelessWidget {
  // estou dizendo que o método build deve ser obrigatoriamente como passado
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text('Linha 1'),
            Text('Linha 2'),
            Text('Linha 3'),
          ],
        ),
      ),
    );
  }
}
