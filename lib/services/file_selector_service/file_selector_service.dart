import 'package:daymemory/services/file_selector_service/photo_access_denied_exception.dart';
import 'package:daymemory/services/logging/logging_service.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

abstract class IFileSelectorService {
  Future<List<String>> selectImages();

  Future<String?> selectVideo();
}

class FileSelectorService implements IFileSelectorService {
  final ILoggingService loggingService;

  FileSelectorService({required this.loggingService});

  @override
  Future<String?> selectVideo() async {
    try {
      final file = await ImagePicker().pickVideo(source: ImageSource.gallery, maxDuration: const Duration(minutes: 10));
      if (file != null) {
        return file.path;
      }
    } on PlatformException catch (e) {
      if (e.code == "photo_access_denied") {
        throw PhotoAccessDeniedException();
      }
      loggingService.logError(e);
    }
    return null;
  }

  @override
  Future<List<String>> selectImages() async {
    try {
      final images = await ImagePicker().pickMultiImage(requestFullMetadata: true);

      if (images.isEmpty) {
        return [];
      }

      return images.map((e) => e.path).toList();
    } on PlatformException catch (e) {
      if (e.code == "photo_access_denied") {
        throw PhotoAccessDeniedException();
      }
      loggingService.logError(e);
    }
    return [];
  }
}
