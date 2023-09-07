import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/data/dtos/notebook_dto.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/notebook_action.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/edit_notebook/edit_notebook_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EditNotebookConverter extends ViewModelConverter<EditNotebookViewModel> {
  final Function(dynamic) dispatch;

  final AppLocalizations locale;

  final String? notebookId;

  final bool isSaving;

  final int orderRank;

  final String? notebookTitle;

  final SortingType sortingType;

  EditNotebookConverter({
    required this.dispatch,
    required this.locale,
    required this.notebookId,
    required this.orderRank,
    required this.isSaving,
    required this.notebookTitle,
    required this.sortingType,
  });

  @override
  EditNotebookViewModel build() {
    return EditNotebookViewModel((b) => b
      ..notebookId = notebookId
      ..isSaving = isSaving
      ..notebookTitle = notebookTitle
      ..deleteButtonTitle = locale.edit_notebook_delete
      ..doneButtonTitle = locale.done_nav_button
      ..title = notebookId == null ? locale.edit_notebook_new_title : locale.edit_notebook_edit_title
      ..saveButtonTitle = locale.done_nav_button
      ..requiredFieldValidator = locale.required_field_validator
      ..titlePlaceholder = locale.edit_notebook_title_placeholder
      ..deleteCommand = FunctionHolder(() {
        dispatch(DeleteNotebookAction(notebookId: notebookId!));
      })
      ..sortByOption = locale.edit_notebook_sortby_option
      ..sortByOptionValue = sortingType == SortingType.byCreatedDate ? locale.edit_notebook_sortby_created_date : locale.edit_notebook_sortby_modified_date
      ..selectSortingTypeCommand = FunctionHolder(() {
        dispatch(NavigateToNotebookSortingOrderAction());
      })
      ..titleChangedCommand = TypedFunctionHolder<String>((title) {
        dispatch(ChangeNotebookTitleAction(title: title));
      })
      ..saveCommand = FunctionHolder(() {
        if (notebookId == null) {
          dispatch(CreateNotebookAction());
        } else {
          dispatch(SaveNotebookAction());
        }
      })
      ..closeCommand = FunctionHolder(() {
        dispatch(PopBackStackAction());
      }));
  }
}
