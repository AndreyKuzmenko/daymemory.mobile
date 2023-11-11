import 'package:daymemory/redux/action/note_image_gallery_action.dart';
import 'package:daymemory/redux/state/note_image_gallery_state/note_image_gallery_state.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

Reducer<NoteImageGalleryState> get noteImageGalleryReducer {
  return combineReducers<NoteImageGalleryState>([
    TypedReducer(_openNoteImageGalleryAction).call,
  ]);
}

NoteImageGalleryState _openNoteImageGalleryAction(NoteImageGalleryState state, OpenNoteImageGalleryAction action) {
  return state.rebuild(
    (b) => b
      ..images = action.images
      ..index = action.index,
  );
}
