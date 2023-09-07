import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/data/dtos/notebook_dto.dart';
import 'package:daymemory/redux/action/menu_item_action.dart';
import 'package:daymemory/redux/action/notebook_action.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/side_menu/side_menu_view_model/side_menu_item_view_model.dart';
import 'package:daymemory/widget/side_menu/side_menu_view_model/side_menu_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../redux/action/actions.dart';

class SideMenuConverter extends ViewModelConverter<SideMenuViewModel> {
  final Function(dynamic) dispatch;
  final AppLocalizations locale;
  final String? selectedMenuItemId;
  final bool isStatic;
  final List<NotebookDto> notebooks;
  final bool isDesktop;
  final bool hasError;

  SideMenuConverter({
    required this.dispatch,
    required this.locale,
    required this.isStatic,
    required this.selectedMenuItemId,
    required this.isDesktop,
    required this.notebooks,
    required this.hasError,
  });

  @override
  SideMenuViewModel build() {
    return SideMenuViewModel((b) => b
      ..selectedNotebookId = selectedMenuItemId
      ..newNotebookMenuOption = locale.side_menu_new_notebook
      ..items = _convertNotebooks()
      ..isDesktop = isDesktop
      ..hasError = hasError
      ..settingsMenuOption = locale.side_menu_settings
      ..reviewMemoriesMenuOption = locale.side_menu_review_memories
      ..notebooksMenuOption = locale.side_menu_notebooks
      ..reviewMemoriesCommand = FunctionHolder(() {
        dispatch(SelectMenuItemAction(
          itemId: null,
          title: null,
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

        dispatch(SelectMenuItemAction(
          //notebook: notebook,
          itemId: notebook.id,
          title: notebook.title,
          nextAction: NavigateToNotesAction(),
        ));
        // if (!isStatic) {
        //   dispatch(PopBackStackAction(key: RouteDirection.notes));
        // }
      }));
  }

  List<SideMenuItemViewModel> _convertNotebooks() {
    var items = notebooks
        .map((item) => SideMenuItemViewModel((b) => b
          ..id = item.id
          ..title = item.title
          ..isSelected = item.id == selectedMenuItemId
          ..notesCount = item.notesCount
          ..selectItemCommand = FunctionHolder(() {
            dispatch(SelectMenuItemAction(
              itemId: item.id,
              title: item.title,
              nextAction: NavigateToNotesAction(),
            ));
          })))
        .toList();

    items.insert(
        0,
        SideMenuItemViewModel(
          (b) => b
            ..id = 'all_notes'
            ..title = locale.all_notes
            ..isSelected = selectedMenuItemId == null
            ..notesCount = notebooks.isEmpty ? 0 : notebooks.map((e) => e.notesCount).reduce((a, b) => a + b)
            ..selectItemCommand = FunctionHolder(() {
              dispatch(SelectMenuItemAction(
                itemId: null,
                title: locale.all_notes,
                nextAction: NavigateToNotesAction(),
              ));
            }),
        ));

    return items;
  }
}
