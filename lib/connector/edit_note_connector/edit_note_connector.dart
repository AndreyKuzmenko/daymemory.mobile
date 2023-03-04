import 'package:daymemory/connector/edit_note_connector/edit_note_converter.dart';
import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/services/device_info_service/device_info_service.dart';
import 'package:daymemory/widget/note/edit_note_widget.dart';
import 'package:daymemory/widget/note/editnote_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../redux/state/states.dart';

class EditNoteConnector extends PageConnector<EditNoteViewModel, EditNoteConverter> {
  const EditNoteConnector({Key? key}) : super(key: key);

  @override
  void onInit(BuildContext context, AppState state, Function dispatch) {
    super.onInit(context, state, dispatch);
    if (state.noteState.noteId == null) {
      dispatch(NoteLoadLocationAction());
    }
  }

  @override
  Widget buildWidget(BuildContext context, EditNoteViewModel viewModel) => EditNoteWidget(viewModel: viewModel);

  @override
  EditNoteConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    var notebookId = state.noteState.notebookId ?? state.selectedNotebookState.notebookId!;
    var notebookTitle = state.notebooksState.items.firstWhere((element) => element.id == notebookId).title;

    final converter = EditNoteConverter(
        dispatch: dispatch,
        locale: AppLocalizations.of(context)!,
        showToolbarOnTop: state.deviceState.deviceType == DeviceType.desktop,
        isVideoSupported: state.deviceState.deviceType == DeviceType.phone || state.deviceState.deviceType == DeviceType.tablet,
        noteId: state.noteState.noteId,
        notebookId: notebookId,
        notebookTitle: notebookTitle,
        tags: state.tagsState.tags,
        text: state.noteState.text ?? "",
        date: state.noteState.date,
        mediaFiles: state.noteState.mediaFiles.toList(),
        isSaving: state.noteState.isSaving,
        location: state.noteState.location);
    return converter;
  }
}
