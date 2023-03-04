import 'package:daymemory/data/dtos/file_dto.dart';

import 'common_action.dart';

class OpenNoteImageGalleryAction implements ILoggingAction {
  final int index;

  final List<FileDto> images;

  const OpenNoteImageGalleryAction({required this.index, required this.images});

  @override
  String toLogString() {
    return 'Open Note Image Gallery Action';
  }
}
