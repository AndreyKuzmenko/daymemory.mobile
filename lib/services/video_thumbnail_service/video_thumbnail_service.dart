import 'package:daymemory/services/logging/logging_service.dart';
import 'package:flutter/foundation.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

abstract class IVideoThumbnailService {
  Future<Uint8List?> makeThumbnail(String filePath);
}

class MobileVideoThumbnailService implements IVideoThumbnailService {
  final ILoggingService loggingService;

  MobileVideoThumbnailService({required this.loggingService});

  @override
  Future<Uint8List?> makeThumbnail(String filePath) async {
    try {
      final uint8list = await VideoThumbnail.thumbnailData(
        video: filePath,
        imageFormat: ImageFormat.JPEG,
        quality: 100,
      );
      if (uint8list == null) {
        return null;
      }
      return uint8list;
    } catch (e) {
      loggingService.logError(e);
    }
    return null;
  }
}
