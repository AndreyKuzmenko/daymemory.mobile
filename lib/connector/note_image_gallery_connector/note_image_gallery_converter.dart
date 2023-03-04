import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/data/dtos/file_dto.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/widget/common/file_view_model.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/notes/note_image_gallery_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NoteImageGalleryConverter extends ViewModelConverter<NoteImageGalleryViewModel> {
  final Function(dynamic) dispatch;

  final AppLocalizations locale;

  final int index;

  final List<FileDto> images;

  final bool showNavigation;

  NoteImageGalleryConverter({
    required this.dispatch,
    required this.locale,
    required this.index,
    required this.images,
    required this.showNavigation,
  });

  @override
  NoteImageGalleryViewModel build() {
    return NoteImageGalleryViewModel((b) => b
      ..images = _convertMediaFiles(images)
      ..index = index
      ..showImageNavigation = showNavigation
      ..closeCommand = FunctionHolder(() {
        dispatch(PopBackStackAction());
      }));
  }

  List<FileViewModel> _convertMediaFiles(List<FileDto> files) {
    if (files.isEmpty) {
      return [];
    }
    return files
        .map(
          (item) => FileViewModel((b) => b
            ..id = item.id
            ..fileType = item.fileType
            ..height = item.height
            ..width = item.width
            ..filePath = item.filePath),
        )
        .toList();
  }
}
