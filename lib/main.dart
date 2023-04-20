import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playNote(AssetSource assetSource) {
    final player = AudioPlayer();
    player.play(assetSource);
  }

  Expanded renderKey(Color color, AssetSource assetSource) => Expanded(
        child: MaterialButton(
          color: color,
          onPressed: () {
            playNote(assetSource);
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            renderKey(Colors.red, AssetSource('assets_note1.wav')),
            renderKey(Colors.orange, AssetSource('assets_note2.wav')),
            renderKey(Colors.yellow, AssetSource('assets_note3.wav')),
            renderKey(Colors.green, AssetSource('assets_note4.wav')),
            renderKey(Colors.teal, AssetSource('assets_note5.wav')),
            renderKey(Colors.blue, AssetSource('assets_note6.wav')),
            renderKey(Colors.purple, AssetSource('assets_note7.wav')),
          ]),
        ),
      ),
    );
  }
}
