import 'package:daymemory/extensions/hex_color_extension.dart';
import 'package:flutter/material.dart';

class VideoIsNotSupported extends StatelessWidget {
  const VideoIsNotSupported({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor.fromHex("#E2E2E2"),
      height: double.infinity,
      child: const Align(
          child: Text(
        "Video is not supported yet on this platform",
        textAlign: TextAlign.center,
      )),
    );
  }
}
