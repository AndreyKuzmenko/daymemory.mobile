import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/data/dtos/notebook_dto.dart';
import 'package:daymemory/redux/action/notebook_action.dart';
import 'package:daymemory/services/navigation/route_direction.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/side_menu/side_menu_view_model/side_menu_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../redux/action/actions.dart';

class SideMenuConverter extends ViewModelConverter<SideMenuViewModel> {
  final Function(dynamic) dispatch;
  final AppLocalizations locale;
  final String? selectedNotebookId;
  final bool isStatic;
  final List<NotebookDto> notebooks;
  final bool isDesktop;

  SideMenuConverter({
    required this.dispatch,
    required this.locale,
    required this.isStatic,
    required this.selectedNotebookId,
    required this.isDesktop,
    required this.notebooks,
  });

  @override
  SideMenuViewModel build() {
    return SideMenuViewModel((b) => b
      ..selectedNotebookId = selectedNotebookId
      ..newNotebookMenuOption = locale.side_menu_new_notebook
      ..notebooks = notebooks
      ..isDesktop = isDesktop
      ..settingsMenuOption = locale.side_menu_settings
      ..reviewMemoriesMenuOption = locale.side_menu_review_memories
      ..notebooksMenuOption = locale.side_menu_notebooks
      ..reviewMemoriesCommand = FunctionHolder(() {
        dispatch(SelectDefaultNotebookAction(
          notebook: null,
          nextAction: null,
        ));
        dispatch(NavigateToReviewAction());
      })
      ..sortNotebooksCommand = FunctionHolder(() {
        dispatch(NavigateToSortNotebooksAction());
      })
      ..newNotebookCommand = FunctionHolder(() {
        dispatch(const InitNotebookAction(
          notebookId: null,
          title: null,
          orderRank: 0,
          showInReview: false,
          sortingType: SortingType.byCreatedDate,
        ));
        dispatch(NavigateToNewNotebookAction());
      })
      ..settingsMenuCommand = FunctionHolder(() {
        dispatch(NavigateToSettingsAction());
      })
      ..selectNotebookCommand = TypedFunctionHolder<NotebookDto>((notebook) {
        //dispatch(NavigateToNotesAction());

        dispatch(SelectDefaultNotebookAction(
          notebook: notebook,
          nextAction: NavigateToNotesAction(),
        ));
        // if (!isStatic) {
        //   dispatch(PopBackStackAction(key: RouteDirection.notes));
        // }
      }));
  }
}
