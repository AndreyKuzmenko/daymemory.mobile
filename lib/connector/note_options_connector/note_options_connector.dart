import 'package:daymemory/connector/note_options_connector/note_options_converter.dart';
import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/widget/note/note_options_view_model.dart';
import 'package:daymemory/widget/note/note_options_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../redux/state/states.dart';
// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';

class NoteOptionsConnector extends PageConnector<NoteOptionsViewModel, NoteOptionsConverter> {
  const NoteOptionsConnector({Key? key}) : super(key: key);

  @override
  void onInit(BuildContext context, AppState state, Function dispatch) {
    super.onInit(context, state, dispatch);
    if (state.noteState.noteId == null) {
      dispatch(NoteLoadLocationAction());
    }
  }

  @override
  Widget buildWidget(BuildContext context, NoteOptionsViewModel viewModel) => NoteOptionsWidget(viewModel: viewModel);

  @override
  NoteOptionsConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    var notebook = state.notebooksState.items.firstWhereOrNull((element) => element.id == state.noteState.notebookId);
    Locale locale = Localizations.localeOf(context);
    final converter = NoteOptionsConverter(
      dispatch: dispatch,
      language: locale.languageCode,
      locale: AppLocalizations.of(context)!,
      tags: state.tagsState.tags,
      date: state.noteState.date,
      noteTags: state.noteState.tags.toList(),
      notebookdId: state.noteState.notebookId,
      notebookTitle: notebook?.title,
      notebooks: state.notebooksState.items,
      location: state.noteState.location,
    );
    return converter;
  }
}
