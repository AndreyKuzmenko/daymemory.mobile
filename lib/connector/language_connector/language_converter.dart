import 'dart:ui';

import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/data/dtos/language_dto.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/settings_action.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/common/locale_notifier.dart';
import 'package:daymemory/widget/settings/common/select_option_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageConverter extends ViewModelConverter<SelectOptionViewModel> {
  final AppLocalizations locale;
  final Function(dynamic) dispatch;
  final List<LanguageDto> availableLanguages;
  final String selectedLanguageCode;
  final LocaleNotifier appLocaleProvider;

  LanguageConverter({
    required this.locale,
    required this.dispatch,
    required this.selectedLanguageCode,
    required this.availableLanguages,
    required this.appLocaleProvider,
  });

  @override
  SelectOptionViewModel build() {
    return SelectOptionViewModel(
      (b) => b
        ..title = locale.settings_select_language_title
        ..selectedOptionId = selectedLanguageCode
        ..options = availableLanguages
            .map((e) => OptionViewModel(
                  key: e.code,
                  value: e.name,
                ))
            .toList()
        ..backCommand = FunctionHolder(() => dispatch((PopBackStackAction())))
        ..optionSelectorCommand = TypedFunctionHolder(
          (code) {
            dispatch(SettingsSelectLanguageAction(languageCode: code));

            appLocaleProvider.setLocale(Locale(code));
          },
        ),
    );
  }
}
