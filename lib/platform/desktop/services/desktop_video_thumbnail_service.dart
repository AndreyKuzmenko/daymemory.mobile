import 'dart:io';
import 'dart:math';

import 'package:dart_vlc/dart_vlc.dart';
import 'package:daymemory/services/logging/logging_service.dart';
import 'package:daymemory/services/video_thumbnail_service/video_thumbnail_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart' as p;

class DesktopVideoThumbnailService implements IVideoThumbnailService {
  final ILoggingService loggingService;

  DesktopVideoThumbnailService({required this.loggingService});

  @override
  Future<Uint8List?> makeThumbnail(String filePath) async {
    return null;
    //TODO: can't make a snapshot yet
    // try {
    //   final originalFile = File(filePath);
    //   final player = Player(id: Random().nextInt(100000000));
    //   player.open(
    //     Media.file(originalFile),
    //     autoStart: false, // default
    //   );

    //   final videoFolder = filePath.substring(0, filePath.lastIndexOf(Platform.pathSeparator));
    //   final snapshotFile = p.join(videoFolder, "shapshot.jpg");

    //   player.takeSnapshot(File(snapshotFile), 1024, 768);
    //   //player.dispose();
    // } catch (e) {
    //   loggingService.logError(e);
    // }
    // return null;
  }
}
