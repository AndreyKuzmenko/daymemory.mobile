import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/connector/theme_connector/theme_converter.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/widget/common/settings_notifier.dart';
import 'package:daymemory/widget/settings/common/select_option_view_model.dart';
import 'package:daymemory/widget/settings/common/select_option_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class ThemeConnector extends PageConnector<SelectOptionViewModel, ThemeConverter> {
  const ThemeConnector({super.key});

  @override
  Widget buildWidget(BuildContext context, SelectOptionViewModel viewModel) => SelectOptionWidget(viewModel: viewModel);

  @override
  ThemeConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final settingsState = state.settingsState;
    final appLocaleProvider = Provider.of<SettingsNotifier>(context, listen: false);
    final converter = ThemeConverter(
      locale: AppLocalizations.of(context)!,
      dispatch: dispatch,
      selectedThemeMode: ThemeMode.values[settingsState.themeMode.toInt()],
      appLocaleProvider: appLocaleProvider,
    );
    return converter;
  }
}
