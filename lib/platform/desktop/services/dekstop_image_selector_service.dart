import 'package:daymemory/services/file_selector_service/file_selector_service.dart';
import 'package:daymemory/services/logging/logging_service.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_windows/image_picker_windows.dart';

class DesktopFileSelectorService implements IFileSelectorService {
  final ILoggingService loggingService;

  DesktopFileSelectorService({required this.loggingService});

  @override
  Future<String?> selectVideo() async {
    try {
      final file = await ImagePickerWindows().pickVideo(source: ImageSource.gallery);
      if (file != null) {
        return file.path;
      }
    } on PlatformException catch (e) {
      loggingService.logError(e);
    }
    return null;
  }

  @override
  Future<List<String>> selectImages() async {
    try {
      final images = await ImagePickerWindows().getMultiImage();

      if (images.isEmpty) {
        return [];
      }

      return images.map((e) => e.path).toList();
    } on PlatformException catch (e) {
      loggingService.logError(e);
    }
    return [];
  }
}
