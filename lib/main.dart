import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

// main() {
//   runApp(new PerguntaApp());
// }

main() => runApp(
    new PerguntaApp()); //recomenda-se usar arrow function aqui (em flutter só pode ter uma linha na arrow)

// classe que gerencia o estado
class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  int _pontuacaoTotal = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Vermelho', 'pontuacao': 5},
        {'texto': 'Verde', 'pontuacao': 1},
        {'texto': 'Azul', 'pontuacao': 0}
      ]
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Gato', 'pontuacao': 10},
        {'texto': 'Cachorro', 'pontuacao': 5},
        {'texto': 'Leão', 'pontuacao': 1},
        {'texto': 'Cobra', 'pontuacao': 0}
      ]
    },
    {
      'texto': 'Qual é o seu time favorito?',
      'respostas': [
        {'texto': 'Sport', 'pontuacao': 10},
        {'texto': 'Santa Cruz', 'pontuacao': 5},
        {'texto': 'Nautico', 'pontuacao': 1},
        {'texto': 'Central', 'pontuacao': 0}
      ]
    }
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  String get fraseResultado {
    if (_pontuacaoTotal < 8) {
      return 'Vishe...';
    } else if (_pontuacaoTotal < 15) {
      return 'Quase lá!';
    } else if (_pontuacaoTotal < 20) {
      return 'Parabéns!';
    } else {
      return 'Nível Chuck Norris!';
    }
  }

  // estou dizendo que o método build deve ser obrigatoriamente como passado
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text('Perguntas  '),
              Icon(Icons.quiz_sharp),
            ],
          ),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder)
            : Resultado(
                fraseResultado, _pontuacaoTotal, _reiniciarQuestionario),
        backgroundColor: Color.fromARGB(70, 125, 125, 125),
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
