import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

void note(int no) {
  AssetsAudioPlayer.newPlayer().open(
    Audio("assets/note$no.wav"),
  );
}

Expanded button(Color color, int noteno) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(backgroundColor: color),
      onPressed: (() {
        note(noteno);
      }),
      child: Container(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: MyBody(),
      ),
    );
  }
}

class MyBody extends StatefulWidget {
  const MyBody({super.key});

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        button(Colors.red, 1),
        button(Colors.blue, 2),
        button(Colors.green, 3),
        button(Colors.yellow, 4),
        button(Colors.purple, 5),
        button(Colors.orange, 6),
        button(Colors.pink, 7),
      ],
    );
  }
}
