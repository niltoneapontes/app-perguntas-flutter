import 'package:flutter/material.dart';

// main() {
//   runApp(new PerguntaApp());
// }

main() => runApp(
    new PerguntaApp()); //recomenda-se usar arrow function aqui (em flutter só pode ter uma linha na arrow)

class PerguntaApp extends StatelessWidget {
  void responder() {
    print('Pergunta respondida!');
  }

  // estou dizendo que o método build deve ser obrigatoriamente como passado
  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas.elementAt(0)),
            ElevatedButton(
                child: Text('Resposta 1'),
                onPressed: responder), // não colocar () no nome da função
            ElevatedButton(child: Text('Resposta 2'), onPressed: responder),
            ElevatedButton(
                child: Text('Resposta 3'),
                onPressed: () {
                  responder();
                }),
          ],
        ),
      ),
    );
  }
}
