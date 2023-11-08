import 'package:daymemory/connector/language_connector/language_converter.dart';
import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/widget/common/locale_notifier.dart';
import 'package:daymemory/widget/settings/common/select_option_view_model.dart';
import 'package:daymemory/widget/settings/common/select_option_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class LanguageConnector extends PageConnector<SelectOptionViewModel, LanguageConverter> {
  const LanguageConnector({super.key});

  @override
  Widget buildWidget(BuildContext context, SelectOptionViewModel viewModel) => SelectOptionWidget(viewModel: viewModel);

  @override
  LanguageConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final settingsState = state.settingsState;
    final appLocaleProvider = Provider.of<LocaleNotifier>(context, listen: false);
    final converter = LanguageConverter(
      locale: AppLocalizations.of(context)!,
      dispatch: dispatch,
      selectedLanguageCode: settingsState.language,
      availableLanguages: settingsState.availableLanguages,
      appLocaleProvider: appLocaleProvider,
    );
    return converter;
  }
}
