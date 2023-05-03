import 'package:flutter/material.dart';
import 'questão.dart';
import 'resposta.dart';

void main() {
  runApp(const PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _nPergunta = 0;
  final List<Map<String, Object>> _perguntas = [
    {
      'texto': 'Qual a seu animal favorito',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'texto': 'Qual o seu animal favorito ?',
      'respostas': ['Coelho', 'Cachorro', 'Gato', 'Leão']
    },
    {
      'texto': 'Qual seu esporte favorito',
      'respostas': ['Futebol', 'Volei', 'Basquete', 'Tenis']
    }
  ];
  void _responder() {
    if (temPerguntaSlecionada) {
      setState(() {
        _nPergunta++;
      });
    }
  }

  bool get temPerguntaSlecionada {
    return _nPergunta < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSlecionada
        ? _perguntas[_nPergunta]['respostas'] as List<String>
        : [];
    respostas.map((t) => Resposta(t, _responder)).toList();
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Center(child: Text('Perguntas'))),
      body: temPerguntaSlecionada
          ? Column(
              children: <Widget>[
                Questao(_perguntas[_nPergunta]['texto'] as String),
                ...respostas.map((t) => Resposta(t, _responder)).toList(),
              ],
            )
          : const Center(
              child: Text('Parabens',
              style: TextStyle(fontSize: 28),
            ),
    ),
    ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
