import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/settings_action.dart';
import 'package:daymemory/services/settings_service/settings_service.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/settings/common/select_option_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PasscodeRequireAfterConverter extends ViewModelConverter<SelectOptionViewModel> {
  final AppLocalizations locale;
  final Function(dynamic) dispatch;
  final List<PasscodeRequireAfterOption> availableOptions;
  final String selectedOption;

  PasscodeRequireAfterConverter({
    required this.locale,
    required this.dispatch,
    required this.selectedOption,
    required this.availableOptions,
  });

  @override
  SelectOptionViewModel build() {
    return SelectOptionViewModel(
      (b) => b
        ..title = locale.settings_passcode_require_after_page_title
        ..selectedOptionId = selectedOption
        ..explanation = locale.settings_passcode_require_after_explanation
        ..options = availableOptions
            .map((e) => OptionViewModel(
                  key: e.seconds.toString(),
                  value: e.title,
                ))
            .toList()
        ..backCommand = FunctionHolder(() => dispatch((PopBackStackAction())))
        ..optionSelectorCommand = TypedFunctionHolder(
          (option) {
            dispatch(SettingsPasscodeRequireAfterAction(seconds: int.parse(option)));
          },
        ),
    );
  }
}
