import 'package:flutter/material.dart';
import 'package:nursultan_assigmants/4_xylophon/widgets/music_button_widget.dart';

class XylophonePage extends StatelessWidget {
  const XylophonePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Xylophone'),
      ),
      body: Column(
        children: [
          const MusicButtonWidget(color: Color(0xffF44336), playIndex: 1),
          const MusicButtonWidget(color: Color(0xffF89703), playIndex: 2),
          const MusicButtonWidget(color: Color(0xffFEEA3B), playIndex: 3),
          const MusicButtonWidget(color: Color(0xff4CAF50), playIndex: 4),
          const MusicButtonWidget(color: Color(0xff2D9688), playIndex: 5),
          const MusicButtonWidget(color: Color(0xffF44336), playIndex: 6),
          const MusicButtonWidget(color: Color(0xff9B27B1), playIndex: 7),
        ],
      ),
    );
  }
}
