import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey(int soundNumber, MaterialStateProperty<Color> color) {
    return Expanded(
      child: TextButton(
        child: null,
        onPressed: () {
          playSound(soundNumber);
        },
        style: ButtonStyle(
          backgroundColor: color,
        ),
      ),
    );
  }

//MaterialStateProperty.all<Color>(Colors.red)
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, MaterialStateProperty.all<Color>(Colors.red)),
              buildKey(2, MaterialStateProperty.all<Color>(Colors.orange)),
              buildKey(3, MaterialStateProperty.all<Color>(Colors.yellow)),
              buildKey(4, MaterialStateProperty.all<Color>(Colors.green)),
              buildKey(5, MaterialStateProperty.all<Color>(Colors.teal)),
              buildKey(6, MaterialStateProperty.all<Color>(Colors.blue)),
              buildKey(7, MaterialStateProperty.all<Color>(Colors.purple)),
            ],
          ),
        ),
      ),
    );
  }
}
