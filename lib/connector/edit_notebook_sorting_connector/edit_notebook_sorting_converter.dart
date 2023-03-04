import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/data/dtos/notebook_dto.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/notebook_action.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/settings/common/select_option_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EditNotebookSortingConverter extends ViewModelConverter<SelectOptionViewModel> {
  final AppLocalizations locale;
  final Function(dynamic) dispatch;
  final SortingType sortingType;
  final String? notebookId;

  EditNotebookSortingConverter({
    required this.locale,
    required this.dispatch,
    required this.sortingType,
    required this.notebookId,
  });

  @override
  SelectOptionViewModel build() {
    return SelectOptionViewModel(
      (b) => b
        ..title = locale.edit_notebook_sortby_title
        ..selectedOptionId = sortingType.index.toString()
        ..options = [
          OptionViewModel(
            key: SortingType.byCreatedDate.index.toString(),
            value: locale.edit_notebook_sortby_created_date,
          ),
          OptionViewModel(
            key: SortingType.byModifiedDate.index.toString(),
            value: locale.edit_notebook_sortby_modified_date,
          ),
        ]
        ..backCommand = FunctionHolder(() => dispatch((PopBackStackAction())))
        ..optionSelectorCommand = TypedFunctionHolder(
          (sortingType) {
            dispatch(ChangeNotebookSortingAction(notebookId: notebookId, sortingType: SortingType.values[int.parse(sortingType)]));
          },
        ),
    );
  }
}
