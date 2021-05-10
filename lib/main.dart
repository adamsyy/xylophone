import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void lol(int x) {
    final player = AudioCache();
    player.play('note$x.wav');
  }

  Expanded buildkey(int y,Color color){
     return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          lol(y);
        },
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
            children: [
               buildkey(1,Colors.red),
              buildkey(2,Colors.green),
              buildkey(3,Colors.amber),
              buildkey(4,Colors.white),
              buildkey(5,Colors.orange),
              buildkey(6,Colors.indigo),
            ],
          ),
        ),
      ),
    );
  }
}
