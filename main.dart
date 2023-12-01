import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  final AudioCache player = AudioCache();

  void playSound(String soundPath) {
    player.play(soundPath);
  }

  Expanded buildKey({required Color color, required String soundPath}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        onPressed: () {
          playSound(soundPath);
        },
        child: SizedBox(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone App'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundPath: 'assets/note1.wav'),
              buildKey(color: Colors.orange, soundPath: 'assets/note2.wav'),
              buildKey(color: Colors.yellow, soundPath: 'assets/note3.wav'),
              buildKey(color: Colors.green, soundPath: 'assets/note4.wav'),
              buildKey(color: Colors.teal, soundPath: 'assets/note5.wav'),
              buildKey(color: Colors.blue, soundPath: 'assets/note6.wav'),
              buildKey(color: Colors.purple, soundPath: 'assets/note7.wav'),
            ],
          ),
        ),
      ),
    );
  }
}
