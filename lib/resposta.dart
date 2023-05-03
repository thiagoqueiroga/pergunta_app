import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  String res;
  final void Function() quandoSelecionado;

  Resposta(this.res, this.quandoSelecionado);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, foregroundColor: Colors.white),
        onPressed: quandoSelecionado,
        child: Text(res),
      ),
    );
  }
}
