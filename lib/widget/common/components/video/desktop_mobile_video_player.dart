import 'dart:io';
import 'dart:math';
import 'package:dart_vlc/dart_vlc.dart';
import 'package:daymemory/widget/common/file_view_model.dart';
import 'package:flutter/material.dart';

class DesktopVideoFilePlayer extends StatefulWidget {
  final FileViewModel file;

  const DesktopVideoFilePlayer({super.key, required this.file});

  @override
  DesktopVideoFilePlayerState createState() => DesktopVideoFilePlayerState();
}

class DesktopVideoFilePlayerState extends State<DesktopVideoFilePlayer> {
  final player = Player(id: Random().nextInt(100000000));

  @override
  void initState() {
    super.initState();
    player.open(
      Media.file(File(widget.file.filePath)),
      autoStart: true, // default
    );
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
        var height = widget.file.height / widget.file.width * constraints.maxWidth;
        var width = MediaQuery.of(context).size.width;
        return Container(
            width: MediaQuery.of(context).size.width,
            height: height,
            margin: const EdgeInsets.symmetric(horizontal: 0),
            decoration: BoxDecoration(
              color: Colors.black.withAlpha(15),
            ),
            child: _getPlayer(width, height));
      }),
    );
  }

  StatelessWidget _getPlayer(double width, double height) {
    return GestureDetector(
      child: Video(
        player: player,
        height: width,
        width: height,
        scale: 1.0, // default
        showControls: false, // default
      ),
      onTap: () {
        setState(() {
          if (player.playback.isPlaying) {
            player.pause();
          } else {
            player.play();
          }
        });
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    player.dispose();
  }
}
