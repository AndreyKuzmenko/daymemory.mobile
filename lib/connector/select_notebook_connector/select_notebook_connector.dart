import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/connector/select_notebook_connector/select_notebook_converter.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/widget/note/select_notebook_view_model.dart';
import 'package:daymemory/widget/note/select_notebook_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../redux/state/states.dart';

class SelectNotebookConnector extends PageConnector<SelectNotebookViewModel, SelectNotebookConverter> {
  const SelectNotebookConnector({super.key});

  @override
  void onInit(BuildContext context, AppState state, Function dispatch) {
    super.onInit(context, state, dispatch);
    if (state.noteState.noteId == null) {
      dispatch(NoteLoadLocationAction());
    }
  }

  @override
  Widget buildWidget(BuildContext context, SelectNotebookViewModel viewModel) => SelectNotebookWidget(viewModel: viewModel);

  @override
  SelectNotebookConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final converter = SelectNotebookConverter(
      dispatch: dispatch,
      locale: AppLocalizations.of(context)!,
      selectedNotebookId: state.noteState.notebookId,
      notebooks: state.notebooksState.items,
    );
    return converter;
  }
}
