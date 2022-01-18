import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MusicButtonWidget extends StatelessWidget {
  const MusicButtonWidget({
    Key key,
    this.playIndex,
    this.color,
  }) : super(key: key);

  final int playIndex;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => playSound(playIndex),
        child: Container(
          color: color,
        ),
      ),
    );
  }

  playSound(int index) {
    final AudioCache player = AudioCache();

    player.play('notes/note$index.wav');
  }
}
