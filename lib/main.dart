import 'package:flutter/material.dart';
import 'questão.dart';
import 'resposta.dart';

void main(){
  runApp(const PerguntaApp());
}
class _PerguntaAppState extends State <PerguntaApp>{
  var _nPergunta = 0;
  void _responder(){
    setState(() {
      _nPergunta ++;
    });
  }
  @override
  Widget build(BuildContext context){
    final perguntas=[
      'Qual a sua cor Favorita?',
      'Qual a sua idade ?',
      'Qual é o seu animal favorito',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: const Center(child: Text('Perguntas'))
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_nPergunta]),
            Resposta('Resposta 1',_responder),
            Resposta("Resposta 2",_responder),
            Resposta("Resposta 3",_responder),
          ],
        ),
      )
    );
  }
}
class PerguntaApp extends StatefulWidget{
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState(){
    return _PerguntaAppState();
  }





}