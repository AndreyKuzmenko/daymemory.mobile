import 'package:daymemory/services/logging/logging_service.dart';
import 'package:daymemory/services/video_thumbnail_service/video_thumbnail_service.dart';
import 'package:flutter/services.dart';

class DesktopVideoThumbnailService implements IVideoThumbnailService {
  final ILoggingService loggingService;

  DesktopVideoThumbnailService({required this.loggingService});

  @override
  Future<Uint8List?> makeThumbnail(String filePath) async {
    return null;
  }
}
