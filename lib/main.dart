import 'package:flutter/material.dart';

void main(){
  runApp(const PerguntaApp());
}
class PerguntaAppState extends State <PerguntaApp>{
  var nPergunta = 0;
  void responder(){
    setState(() {
      nPergunta ++;  
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
            Text(perguntas[nPergunta]),
            ElevatedButton(
              onPressed: responder,
              child: const Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: responder,
              child:const Text('Resposta 2')
            ),
            ElevatedButton(
              onPressed: responder,
              child: const Text('Resposta 3')
             ),
            ElevatedButton(
              onPressed: responder,
              child: const Text('Resposta 4')
            )
              
          ],
        ),
      )
    );
  }
}
class PerguntaApp extends StatefulWidget{
  const PerguntaApp({super.key});
  
  @override
  PerguntaAppState createState(){
    return PerguntaAppState();
  }




  
}