import 'dart:ui';

import 'package:built_collection/built_collection.dart';
import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/data/dtos/file_dto.dart';
import 'package:daymemory/data/dtos/note_dto.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/note_image_gallery_action.dart';
import 'package:daymemory/redux/action/system_action.dart';
import 'package:daymemory/widget/common/file_view_model.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/notes/note_view_model.dart';
import 'package:daymemory/widget/notes/notes_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

class NotesConverter extends ViewModelConverter<NotesViewModel> {
  final AppLocalizations loc;
  final Locale locale;
  final Function(dynamic) dispatch;
  final bool isLoading;
  final bool isLoadingMore;
  final bool hasLoadedAll;
  final bool showDrawerMenu;
  final bool showContextMenu;
  final bool isScrollToTopEnabled;
  final bool isFullscreen;
  final String? notebookId;
  // final String? notebookTitle;
  // final int notebookOrderRank;
  // final bool notebookShowInReview;
  // final SortingType notebookSortingType;
  final String title;
  final String? tag;
  final List<NoteDto> notes;

  NotesConverter({
    required this.locale,
    required this.loc,
    required this.dispatch,
    required this.isLoading,
    required this.showDrawerMenu,
    required this.showContextMenu,
    required this.isLoadingMore,
    required this.hasLoadedAll,
    required this.notes,
    required this.title,
    required this.notebookId,
    // required this.notebookTitle,
    // required this.notebookId,
    // required this.notebookOrderRank,
    // required this.notebookShowInReview,
    // required this.notebookSortingType,
    required this.isFullscreen,
    required this.tag,
    required this.isScrollToTopEnabled,
  });

  @override
  NotesViewModel build() {
    return NotesViewModel((b) => b
      ..isLoading = isLoading
      ..title = title
      ..loadingTitle = loc.loading
      ..noNotes = notebookId == null ? loc.no_notebook_notes : loc.no_notes
      ..notebookId = notebookId
      ..showDrawerMenu = showDrawerMenu
      ..isScrollToTopEnabled = isScrollToTopEnabled
      ..noteList = _convertNotes()?.toBuilder()
      ..editNotebookCommand = notebookId == null
          ? null
          : FunctionHolder(() {
              dispatch(NavigateToEditNotebookAction(notebookId: notebookId!));
            })
      ..newNoteCommand = notebookId == null
          ? null
          : FunctionHolder(() {
              dispatch(InitNoteAction(
                noteId: null,
                notebookId: notebookId,
                text: "",
                mediaFiles: [],
                location: null,
                date: DateTime.now().toUtc(),
              ));
              dispatch(NavigateToNewNoteAction());
            })
      ..loadMoreCommand = FunctionHolder(() => dispatch((LoadMoreNotesAction(notebookId))))
      ..refreshCommand = FunctionHolder(() {
        dispatch(NotesRefreshAction(notebookId));
        dispatch(MakeSystemClickAction());
      })
      ..updatedDataCommand = FunctionHolder(() {
        dispatch(NotesRefreshAction(notebookId));
      })
      ..isLoadingMore = isLoadingMore
      ..isAllItemsLoaded = hasLoadedAll);
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

  BuiltList<NoteViewModel>? _convertNotes() {
    if (notes.isEmpty) {
      return null;
    }
    return notes
        .map(
          (item) => NoteViewModel((b) => b
            ..noteId = item.id
            ..text = item.text
            ..isFullscreen = isFullscreen
            ..showMoreText = loc.show_more
            ..menuCancel = loc.menu_cancel
            ..menuDelete = loc.menu_delete
            ..menuEdit = loc.menu_edit
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
                location: item.location,
                date: item.date,
              ));
              dispatch(NavigateToNoteDetailAction());
            })),
        )
        .toList()
        .toBuiltList();
  }
}
