import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MarimbaApp());

class MarimbaApp extends StatelessWidget {
  void tocarSom(int numeroDoSom) {
    final player = AudioCache();
    player.play('nota$numeroDoSom.wav');
  }

  Expanded criarBotao({int numeroDaNota, Color cor}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          tocarSom(numeroDaNota);
        },
        style: TextButton.styleFrom(backgroundColor: cor),
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              criarBotao(numeroDaNota: 1, cor: Colors.teal),
              criarBotao(numeroDaNota: 2, cor: Colors.blue),
              criarBotao(numeroDaNota: 3, cor: Colors.yellow),
              criarBotao(numeroDaNota: 4, cor: Colors.red),
              criarBotao(numeroDaNota: 5, cor: Colors.grey),
              criarBotao(numeroDaNota: 6, cor: Colors.purple),
              criarBotao(numeroDaNota: 7, cor: Colors.brown),
            ],
          ),
        ),
      ),
    );
  }
}
