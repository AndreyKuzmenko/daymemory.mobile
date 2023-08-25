import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/data/dtos/position_dto.dart';
import 'package:daymemory/data/dtos/tag_dto.dart';
import 'package:daymemory/data/dtos/file_dto.dart';
import 'package:daymemory/data/dtos/note_dto.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/services/navigation/route_direction.dart';
import 'package:daymemory/widget/common/file_view_model.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/note/editnote_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EditNoteConverter extends ViewModelConverter<EditNoteViewModel> {
  final Function(dynamic) dispatch;

  final AppLocalizations locale;

  final String? noteId;

  final String notebookId;

  final String notebookTitle;

  final bool isSaving;

  final String text;

  final DateTime date;

  final LocationDto? location;

  final List<FileDto> mediaFiles;

  final List<TagDto> tags;

  final bool showToolbarOnTop;

  final bool isVideoSupported;

  final bool hasChanged;

  EditNoteConverter({
    required this.dispatch,
    required this.locale,
    required this.noteId,
    required this.notebookId,
    required this.notebookTitle,
    required this.isSaving,
    required this.text,
    required this.date,
    required this.location,
    required this.mediaFiles,
    required this.showToolbarOnTop,
    required this.isVideoSupported,
    required this.tags,
    required this.hasChanged,
  });

  @override
  EditNoteViewModel build() {
    return EditNoteViewModel((b) => b
      ..noteId = noteId
      ..isSaving = isSaving
      ..text = text
      ..location = location
      ..tags = tags
      ..textPlaceholder = locale.memory_hint_text
      ..doneButtonText = locale.done_nav_button
      ..date = date
      ..notebookId = notebookId
      ..notebookTitle = notebookTitle
      ..showToolbarOnTop = showToolbarOnTop
      ..mediaFiles.addAll(_convertMediaFiles(mediaFiles))
      ..isVideoSupported = isVideoSupported
      ..deleteImageCommand = TypedFunctionHolder<String>((id) {
        dispatch(NoteDeleteFileAction(fileId: id));
      })
      ..textChangedCommand = TypedFunctionHolder<String>((data) {
        dispatch(NoteChangeTextAction(text: data));
      })
      ..optionsCommand = FunctionHolder(() {
        dispatch(NavigateToNoteOptionsAction());
      })
      ..selectImagesCommand = FunctionHolder(() {
        dispatch(AppStateAction(nextAction: NoteSelectImagesAction(), isAppActive: true));
      })
      ..selectVideoCommand = FunctionHolder(() {
        dispatch(AppStateAction(nextAction: NoteSelectVideoAction(), isAppActive: true));
      })
      ..selectNotebookCommand = FunctionHolder(() {
        dispatch(NavigateToSelectNotebookAction());
      })
      ..dateChangedCommand = TypedFunctionHolder<DateTime>((date) {
        dispatch(NoteChangeDateAction(date: date));
      })
      ..reorderCommand = TypedFunctionHolder<ItemPositionDto>(
        (data) {
          dispatch(ReorderImagesAction(data.current, data.start));
        },
      )
      ..saveCommand = FunctionHolder(() {
        if (!hasChanged) {
          dispatch(PopBackStackAction(key: RouteDirection.editNote));
          return;
        }

        if (noteId == null) {
          dispatch(CreateNoteAction());
        } else {
          dispatch(SaveNoteAction());
        }
      })
      ..closeCommand = FunctionHolder(() {
        if (hasChanged) {
          dispatch(DiscardNoteChangesAction(PopBackStackAction(key: RouteDirection.editNote)));
        } else {
          dispatch(PopBackStackAction(key: RouteDirection.editNote));
        }
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
