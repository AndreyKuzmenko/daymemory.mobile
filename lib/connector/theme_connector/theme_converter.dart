import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/redux/action/navigation_action.dart';
import 'package:daymemory/redux/action/settings_action.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/common/settings_notifier.dart';
import 'package:daymemory/widget/settings/common/select_option_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeConverter extends ViewModelConverter<SelectOptionViewModel> {
  final AppLocalizations locale;
  final Function(dynamic) dispatch;
  final ThemeMode selectedThemeMode;
  final SettingsNotifier appLocaleProvider;

  ThemeConverter({
    required this.locale,
    required this.dispatch,
    required this.selectedThemeMode,
    required this.appLocaleProvider,
  });

  @override
  SelectOptionViewModel build() {
    return SelectOptionViewModel(
      (b) => b
        ..title = locale.settings_select_theme_title
        ..selectedOptionId = selectedThemeMode.index.toString()
        ..navType = OptionNavType.back
        ..options = [
          OptionViewModel(key: ThemeMode.system.index.toString(), value: locale.settings_theme_mode_system),
          OptionViewModel(key: ThemeMode.light.index.toString(), value: locale.settings_theme_mode_light),
          OptionViewModel(key: ThemeMode.dark.index.toString(), value: locale.settings_theme_mode_dark),
        ]
        ..backCommand = FunctionHolder(() => dispatch((PopBackStackAction())))
        ..optionSelectorCommand = TypedFunctionHolder(
          (code) {
            final themeMode = ThemeMode.values[int.parse(code)];
            dispatch(SettingsSelectThemeModeAction(themeMode: themeMode));
            appLocaleProvider.setTheme(themeMode);
          },
        ),
    );
  }
}
