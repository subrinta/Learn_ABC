import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget latterbox(String ch, int note, Color col) {
    return FlatButton(
      color: col,
      onPressed: () {
        player.play('abc$note.wav');
      },
      child: Text(
        ch,
        style: TextStyle(fontSize: 100),
      ),
    );
  }

  final player = AudioCache();
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            latterbox("A", 1, Colors.pink),
            latterbox("B", 2, Colors.green),
            latterbox("C", 3, Colors.blue),
            latterbox("D", 4, Colors.blue.shade900),
            latterbox("E", 5, Colors.redAccent),
            latterbox("F", 6, Colors.yellow),
            latterbox("G", 7, Colors.cyan),
            latterbox("H", 8, Colors.blueGrey),
            latterbox("I", 9, Colors.teal),
            latterbox("J", 10, Colors.amber),
            latterbox("K", 11, Colors.orange),
            latterbox("L", 12, Colors.cyanAccent),
            latterbox("M", 13, Colors.brown),
            latterbox("N", 14, Colors.deepPurpleAccent),
            latterbox("O", 15, Colors.deepOrange),
            latterbox("P", 16, Colors.grey),
            latterbox("Q", 17, Colors.indigo),
            latterbox("R", 18, Colors.lightGreen),
            latterbox("S", 19, Colors.indigoAccent),
            latterbox("T", 20, Colors.pinkAccent),
            latterbox("U", 21, Colors.redAccent),
            latterbox("V", 22, Colors.tealAccent),
            latterbox("W", 23, Colors.white54),
            latterbox("X", 24, Colors.yellowAccent),
            latterbox("Y", 25, Colors.blueAccent),
            latterbox("Z", 26, Colors.green),
          ],
        ),
      ),
    );
  }
}
