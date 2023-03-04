import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/connector/tabs_connector/tabs_converter.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/widget/tabs/tabs_view_model.dart';
import 'package:daymemory/widget/tabs/tabs_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TabsConnector extends PageConnector<TabsViewModel, TabsConverter> {
  const TabsConnector({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, TabsViewModel viewModel) => TabsWidget(viewModel: viewModel);

  @override
  TabsConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final tabsState = state.tabsState;
    Locale locale = Localizations.localeOf(context);
    final converter = TabsConverter(
      loc: AppLocalizations.of(context)!,
      locale: locale,
      dispatch: dispatch,
      isActiveTabClicked: tabsState.isActiveTabClicked,
      selectedTabIndex: tabsState.selectTabIndex,
    );
    return converter;
  }
}
