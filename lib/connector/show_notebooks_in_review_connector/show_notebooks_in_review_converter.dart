import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/data/dtos/notebook_dto.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/notebook_action.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/notebooks/show_notebook_in_review_view_model.dart';
import 'package:daymemory/widget/notebooks/show_notebooks_in_review_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ShowNotebooksInReviewConverter extends ViewModelConverter<ShowNotebooksInReviewViewModel> {
  final Function(dynamic) dispatch;

  final AppLocalizations locale;

  final List<NotebookDto> notebooks;

  final bool showDragIcon;

  ShowNotebooksInReviewConverter({
    required this.dispatch,
    required this.locale,
    required this.notebooks,
    required this.showDragIcon,
  });

  @override
  ShowNotebooksInReviewViewModel build() {
    return ShowNotebooksInReviewViewModel((b) => b
      ..notebooks = notebooks
          .map((e) => ShowNotebookInReviewViewModel((b) => b
            ..notebookId = e.id
            ..notebookTitle = e.title
            ..switchShowInReviewCommand = TypedFunctionHolder<bool>(
              (data) {
                dispatch(ShowNotebookInReviewAction(notebookId: e.id, enabled: data));
              },
            )
            ..isEnabled = e.showInReview))
          .toList()
      ..title = locale.show_in_review_notebooks_title
      ..noNotebooks = locale.show_in_review_notebooks_no_items
      ..backCommand = FunctionHolder(() => dispatch(PopBackStackAction())));
  }
}
