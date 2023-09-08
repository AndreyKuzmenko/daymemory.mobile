import 'dart:ui';

import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/data/dtos/file_dto.dart';
import 'package:daymemory/data/dtos/note_dto.dart';
import 'package:daymemory/data/dtos/review_category_dto.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/note_image_gallery_action.dart';
import 'package:daymemory/widget/common/file_view_model.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/notes/note_view_model.dart';
import 'package:daymemory/widget/review/review_category_view_model.dart';
import 'package:daymemory/widget/review/review_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

class ReviewConverter extends ViewModelConverter<ReviewViewModel> {
  final AppLocalizations loc;
  final Locale locale;
  final Function(dynamic) dispatch;

  final bool isLoading;
  final int totalItems;
  final List<ReviewCategoryDto> items;
  final bool showDrawerMenu;
  final bool showContextMenu;
  final bool isFullscreen;

  ReviewConverter({
    required this.locale,
    required this.loc,
    required this.dispatch,
    required this.isLoading,
    required this.totalItems,
    required this.items,
    required this.isFullscreen,
    required this.showContextMenu,
    required this.showDrawerMenu,
  });

  @override
  ReviewViewModel build() {
    return ReviewViewModel((b) => b
      ..isLoading = isLoading
      ..title = loc.review_memories_page_title
      ..loadingTitle = loc.loading
      ..showDrawerMenu = showDrawerMenu
      ..items = items
          .map((e) => ReviewCategoryViewModel(
                (b) => b
                  ..id = e.id
                  ..notes = _convertNotes(e.notes)
                  ..title = e.title,
              ))
          .toList()
      ..noItems = loc.no_review_items);
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

  List<NoteViewModel> _convertNotes(List<NoteDto> notes) {
    return notes
        .map(
          (item) => NoteViewModel((b) => b
            ..noteId = item.id
            ..text = item.text
            ..isFullscreen = isFullscreen
            ..menuCancel = loc.menu_cancel
            ..menuDelete = loc.menu_delete
            ..menuEdit = loc.menu_edit
            ..showMoreText = loc.show_more
            ..mediaFiles = _convertMediaFiles(item.mediaFiles)
            ..location = item.location
            ..showContextMenu = showContextMenu
            ..displayDate = DateFormat('dd.MM.yyyy', locale.languageCode).format(item.date.toLocal())
            ..openTagCommand = TypedFunctionHolder<String>((tag) {
              dispatch(NavigateToTagAction(tag: tag));
            })
            ..openGalleryCommand = TypedFunctionHolder<int>((index) {
              dispatch(OpenNoteImageGalleryAction(index: index, images: item.mediaFiles));
              dispatch(NavigateToNoteImageGalleryAction());
            })
            ..deleteNoteCommand = FunctionHolder(
              () => dispatch(
                DeleteNoteAction(noteId: item.id),
              ),
            )
            ..openNoteCommand = FunctionHolder(() {
              dispatch(InitNoteAction(
                noteId: item.id,
                notebookId: item.notebookId,
                text: item.text,
                mediaFiles: item.mediaFiles,
                tags: item.tags,
                location: item.location,
                date: item.date,
              ));
              dispatch(NavigateToNoteDetailAction());
            })),
        )
        .toList();
  }
}
