import 'dart:ui';

import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/settings/account_settings_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AccountSettingsConverter extends ViewModelConverter<AccountSettingsViewModel> {
  final AppLocalizations locale;
  final Function(dynamic) dispatch;
  final String userName;
  final String userEmail;
  final Locale languageLocale;

  AccountSettingsConverter({
    required this.locale,
    required this.dispatch,
    required this.userName,
    required this.userEmail,
    required this.languageLocale,
  });

  @override
  AccountSettingsViewModel build() {
    return AccountSettingsViewModel((b) => b
      ..title = locale.settings_account_page_title
      ..emailOptionTitle = locale.settings_account_email_option
      ..emailOptionValue = userEmail
      ..nameOptionTitle = locale.settings_account_name_option
      ..nameOptionValue = userName
      ..accountExplanation = locale.settings_account_explanation
      ..backCommand = FunctionHolder(() => dispatch((PopBackStackAction())))
      ..logoutCommand = FunctionHolder(() {
        dispatch(LogoutAction());
        dispatch(PopBackStackAction());
      })
      ..logoutOptionTitle = locale.settings_logout_option);
  }
}
