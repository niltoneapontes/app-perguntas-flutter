import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

// main() {
//   runApp(new PerguntaApp());
// }

main() => runApp(
    new PerguntaApp()); //recomenda-se usar arrow function aqui (em flutter só pode ter uma linha na arrow)

// classe que gerencia o estado
class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
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
            Questao(perguntas[_perguntaSelecionada]),
            Resposta('Resposta 1 ne'),
            ElevatedButton(child: Text('Resposta 2'), onPressed: _responder),
            ElevatedButton(
                child: Text('Resposta 3'),
                onPressed: () {
                  _responder();
                }),
          ],
        ),
      ),
    );
  }
}

// classe do componente
class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
