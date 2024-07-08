import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int track) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/audios/note$track.wav"), // Correct audio path
    );
  }

  Expanded playButton({required Color color, required int track}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        onPressed: () {
          playSound(track); // Correct audio path
        },
        child: Text(
          ' ',
        ),
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
              playButton(color: Colors.red, track: 1),
              playButton(color: Colors.yellow, track: 2),
              playButton(color: Colors.green, track: 3),
              playButton(color: Colors.teal, track: 4),
              playButton(color: Colors.pink, track: 5),
              playButton(color: Colors.orange, track: 6),
              playButton(color: Colors.white, track: 7),
            ],
          ),
        ),
      ),
    );
  }
}
