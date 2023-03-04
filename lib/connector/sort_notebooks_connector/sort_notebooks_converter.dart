import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/data/dtos/notebook_dto.dart';
import 'package:daymemory/data/dtos/position_dto.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/notebook_action.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/notebooks/sort_notebooks_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SortNotebooksConverter extends ViewModelConverter<SortNotebooksViewModel> {
  final Function(dynamic) dispatch;

  final AppLocalizations locale;

  final List<NotebookDto> notebooks;

  final bool showDragIcon;

  SortNotebooksConverter({
    required this.dispatch,
    required this.locale,
    required this.notebooks,
    required this.showDragIcon,
  });

  @override
  SortNotebooksViewModel build() {
    return SortNotebooksViewModel((b) => b
      ..notebooks = notebooks
      ..title = locale.sort_notebooks_title
      ..loadingTitle = locale.loading
      ..showDragIcon = showDragIcon
      ..noNotebooks = locale.sort_notebooks_no_items
      ..backCommand = FunctionHolder(() => dispatch(PopBackStackAction()))
      ..reorderCommand = TypedFunctionHolder<ItemPositionDto>(
        (data) {
          dispatch(ReorderNotebooksAction(data.current, data.start));
        },
      ));
  }
}
