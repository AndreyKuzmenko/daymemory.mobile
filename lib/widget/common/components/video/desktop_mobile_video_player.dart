import 'dart:io';
import 'dart:math';
import 'package:media_kit/media_kit.dart';
import 'package:daymemory/widget/common/file_view_model.dart';
import 'package:flutter/material.dart';
import 'package:media_kit_video/media_kit_video.dart';

class DesktopVideoFilePlayer extends StatefulWidget {
  final FileViewModel file;

  const DesktopVideoFilePlayer({super.key, required this.file});

  @override
  DesktopVideoFilePlayerState createState() => DesktopVideoFilePlayerState();
}

class DesktopVideoFilePlayerState extends State<DesktopVideoFilePlayer> {
  late final player = Player();
  late final controller = VideoController(player);

  @override
  void initState() {
    super.initState();

    player.open(Media(widget.file.filePath), play: true);

    // player.open(
    //   Media.file(File(widget.file.filePath)),
    //   autoStart: true, // default
    // );
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
      child: Video(controller: controller),
      onTap: () {
        setState(() {
          if (controller.player.state.playing) {
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
