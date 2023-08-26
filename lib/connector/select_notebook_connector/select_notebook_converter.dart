import 'package:built_collection/built_collection.dart';
import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/data/dtos/notebook_dto.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/note/select_notebook_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SelectNotebookConverter extends ViewModelConverter<SelectNotebookViewModel> {
  final Function(dynamic) dispatch;

  final AppLocalizations locale;

  final List<NotebookDto> notebooks;

  final String? selectedNotebookId;

  SelectNotebookConverter({
    required this.dispatch,
    required this.locale,
    required this.notebooks,
    required this.selectedNotebookId,
  });

  @override
  SelectNotebookViewModel build() {
    return SelectNotebookViewModel((b) => b
      ..notebooks = notebooks.toBuiltList().toBuilder()
      ..title = locale.note_select_notebook_title
      ..selectNotebookCommand = TypedFunctionHolder<String>((notebookId) {
        dispatch(NoteNotebookChangedAction(notebookId: notebookId));
      })
      ..newNotebookCommand = FunctionHolder(() {
        dispatch(NavigateToNewNotebookAction());
      })
      ..newNotebookMenuOption = locale.side_menu_new_notebook
      ..selectedNotebookId = selectedNotebookId
      ..closeCommand = FunctionHolder(() {
        dispatch(PopBackStackAction());
      }));
  }
}
