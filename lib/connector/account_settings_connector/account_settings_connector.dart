import 'package:daymemory/connector/account_settings_connector/account_settings_converter.dart';
import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/widget/settings/account_settings_view_model.dart';
import 'package:daymemory/widget/settings/account_settings_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AccountSettingsConnector extends PageConnector<AccountSettingsViewModel, AccountSettingsConverter> {
  const AccountSettingsConnector({super.key});

  @override
  Widget buildWidget(BuildContext context, AccountSettingsViewModel viewModel) => AccountSettingsWidget(viewModel: viewModel);

  @override
  AccountSettingsConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    Locale languageLocale = Localizations.localeOf(context);
    final converter = AccountSettingsConverter(
      locale: AppLocalizations.of(context)!,
      dispatch: dispatch,
      languageLocale: languageLocale,
      userEmail: state.accountState.userEmail ?? "",
      userName: "${state.accountState.firstName ?? ''} ${state.accountState.lastName ?? ''}",
    );
    return converter;
  }
}
