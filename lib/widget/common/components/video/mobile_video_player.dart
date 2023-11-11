import 'dart:io';

import 'package:daymemory/widget/common/file_view_model.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MobileVideoFilePlayer extends StatefulWidget {
  final FileViewModel file;

  const MobileVideoFilePlayer({super.key, required this.file});

  @override
  MobileVideoFilePlayerState createState() => MobileVideoFilePlayerState();
}

class MobileVideoFilePlayerState extends State<MobileVideoFilePlayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.file(
      File(widget.file.filePath),
    )..initialize().then((x) {
        // // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {
          _controller.setLooping(true);
          _controller.play();
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
        var height = widget.file.height / widget.file.width * constraints.maxWidth;

        return Container(
            width: MediaQuery.of(context).size.width,
            height: height,
            margin: const EdgeInsets.symmetric(horizontal: 0),
            decoration: BoxDecoration(
              color: Colors.black.withAlpha(15),
            ),
            child: _getPlayer());
      }),
    );
  }

  StatelessWidget _getPlayer() {
    return _controller.value.isInitialized
        ? GestureDetector(
            child: VideoPlayer(_controller),
            onTap: () {
              setState(() {
                if (_controller.value.isPlaying) {
                  _controller.pause();
                } else {
                  _controller.play();
                }
              });
            },
          )
        : Container(
            //color: Colors.green,
            );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
