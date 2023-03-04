import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/file_view_model.dart';
import 'package:daymemory/widget/common/function_holder.dart';

part 'note_image_gallery_view_model.g.dart';

abstract class NoteImageGalleryViewModel implements Built<NoteImageGalleryViewModel, NoteImageGalleryViewModelBuilder> {
  List<FileViewModel> get images;

  int get index;

  bool get showImageNavigation;

  FunctionHolder get closeCommand;

  NoteImageGalleryViewModel._();

  factory NoteImageGalleryViewModel([void Function(NoteImageGalleryViewModelBuilder)? updates]) = _$NoteImageGalleryViewModel;
}
