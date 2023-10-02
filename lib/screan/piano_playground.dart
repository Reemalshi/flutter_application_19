
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


class PianoPlayGround extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

 Expanded playKey({Color colorName, int num}) {
  return Expanded(
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: colorName, // Set the button color
      ),
      child: Text(
        'Touch to Play',
        style: TextStyle(
          fontSize: 12.0,
          color: Colors.black,
        ),
      ),
      onPressed: () {
        playSound(num);
      },
    ),
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Piano',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          playKey(
            colorName: Colors.green,
            num: 7,
          ),
          playKey(
            colorName: Colors.blueGrey,
            num: 6,
          ),
          playKey(
            colorName: Colors.yellow,
            num: 5,
          ),
          playKey(
            colorName: Colors.red,
            num: 4,
          ),
          playKey(
            colorName: Colors.cyan,
            num: 3,
          ),
          playKey(
            colorName: Colors.brown,
            num: 2,
          ),
          playKey(
            colorName: Colors.pink,
            num: 1,
          ),
        ],
      )),
    );
  }
}

