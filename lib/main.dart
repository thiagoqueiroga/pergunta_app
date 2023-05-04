import 'package:flutter/material.dart';
import 'resultado.dart';
import 'questionario.dart';

void main() {
  runApp(const PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _nPergunta = 0;
  var _pontuacaoTotal = 0;
  final List<Map<String, Object>> _perguntas = [
    {
      'texto': 'Qual a seu animal favorito',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': '10'},
        {'texto': 'Vermelho', 'pontuacao': '10'},
        {'texto': 'Verde', 'pontuacao': '10'},
        {'texto': 'Branco', 'pontuacao': '10'},
      ],
    },
    {
      'texto': 'Qual o seu animal favorito ?',
      'respostas': [
        {'texto': 'Coelho', 'pontuacao': '5'},
        {'texto': 'Cachorro', 'pontuacao': '5'},
        {'texto': 'Gato', 'pontuacao': '5'},
        {'texto': 'Leão', 'pontuacao': '5'},
      ]
    },
    {
      'texto': 'Qual seu esporte favorito',
      'respostas': [
        {'texto': 'Futebol', 'pontuacao': '15'},
        {'texto': 'Volei', 'pontuacao': '15'},
        {'texto': 'Basquete', 'pontuacao': '15'},
        {'texto': 'Tenis', 'pontuacao': '15'},
      ]
    }
  ];
  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _nPergunta++;
        _pontuacaoTotal += pontuacao;
      });
    }
    // ignore: avoid_print
    print(_pontuacaoTotal);
  }

  bool get temPerguntaSelecionada {
    return _nPergunta < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Center(child: Text('Perguntas'))),
          body: temPerguntaSelecionada
              ? Questionario(
                  perguntas: _perguntas,
                  nPergunta: _nPergunta,
                  quantoResponder: _responder,
                )
              : const Resultado()),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
