import 'dart:ffi';

import 'package:flutter/material.dart';
import 'questão.dart';
import 'resposta.dart';
// ignore: must_be_immutable
class Questionario extends StatelessWidget {
  final int nPergunta;
  final List<Map<String, Object>> perguntas;
  final void Function(int) quantoResponder;

  const Questionario({
    super.key,
    required this.nPergunta,
    required this.perguntas,
    required this.quantoResponder,
  });
  bool get temPerguntaSlecionada {
    return nPergunta < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSlecionada
        ? perguntas[nPergunta]['respostas'] as List<String>
        : [];
    return Column(
      children: [
        Questao(perguntas[nPergunta]['texto'] as String),
        ...respostas.map((t){
           return Resposta(
            t['texto'].toString(),
             () => quantoResponder(int.parse(['pontuacao'].toString())),
             );
        }).toList(),
      ],
    );
  }
}
