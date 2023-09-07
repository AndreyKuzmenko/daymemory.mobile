import 'package:daymemory/connector/notes_connector/notes_converter.dart';
import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/redux/action/notes_action.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/services/device_info_service/device_info_service.dart';
import 'package:daymemory/widget/notes/notes_view_model.dart';
import 'package:daymemory/widget/notes/notes_widget.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NotesConnector extends PageConnector<NotesViewModel, NotesConverter> {
  const NotesConnector({Key? key}) : super(key: key);

  @override
  void onInit(BuildContext context, AppState state, Function dispatch) {
    super.onInit(context, state, dispatch);
    dispatch(LoadNotesAction(notebookId: state.selectedMenuItemState.itemId));
  }

  @override
  Widget buildWidget(BuildContext context, NotesViewModel viewModel) => NotesWidget(viewModel: viewModel);

  @override
  NotesConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final notesState = state.notesState;
    Locale locale = Localizations.localeOf(context);
    var loc = AppLocalizations.of(context)!;
    final tabsState = state.tabsState;
    var settings = AppThemeWidget.getConfigurationSettings(context);
    //final theme = AppThemeWidget.getTheme(context);
    final converter = NotesConverter(
        tag: null,
        loc: loc,
        locale: locale,
        dispatch: dispatch,
        isLoading: notesState.isLoading,
        notes: notesState.notes,
        showDrawerMenu: state.deviceState.deviceWidthType == DeviceWidthType.narrow,
        showContextMenu: state.deviceState.deviceWidthType == DeviceWidthType.wide,
        isFullscreen: state.deviceState.deviceWidthType == DeviceWidthType.wide && state.deviceState.size.width >= settings.fullscreenMinWidth + settings.sideMenuWidth + 20,
        notebookId: state.selectedMenuItemState.itemId,
        title: state.selectedMenuItemState.title ?? settings.appName,
        isScrollToTopEnabled: tabsState.isActiveTabClicked && tabsState.selectTabIndex == 0,
        isLoadingMore: notesState.isLoadingMore,
        hasLoadedAll: notesState.hasLoadedAll);
    return converter;
  }
}
