import 'package:built_value/built_value.dart';
import 'package:daymemory/data/dtos/file_dto.dart';

part 'note_image_gallery_state.g.dart';

abstract class NoteImageGalleryState implements Built<NoteImageGalleryState, NoteImageGalleryStateBuilder> {
  int get index;

  List<FileDto> get images;

  NoteImageGalleryState._();

  factory NoteImageGalleryState([void Function(NoteImageGalleryStateBuilder) updates]) = _$NoteImageGalleryState;

  factory NoteImageGalleryState.initial() => NoteImageGalleryState((b) => b
    ..index = 0
    ..images = []);
}
