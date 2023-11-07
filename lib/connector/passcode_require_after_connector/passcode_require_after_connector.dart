import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/connector/passcode_require_after_connector/passcode_require_after_converter.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/services/text_localization.dart';
import 'package:daymemory/widget/settings/common/select_option_view_model.dart';
import 'package:daymemory/widget/settings/common/select_option_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PasscodeRequireAfterConnector extends PageConnector<SelectOptionViewModel, PasscodeRequireAfterConverter> {
  const PasscodeRequireAfterConnector({super.key});

  @override
  Widget buildWidget(BuildContext context, SelectOptionViewModel viewModel) => SelectOptionWidget(viewModel: viewModel);

  @override
  PasscodeRequireAfterConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final settingsState = state.settingsState;
    final locale = AppLocalizations.of(context)!;
    final converter = PasscodeRequireAfterConverter(
      locale: locale,
      dispatch: dispatch,
      selectedOption: settingsState.passcodeRequireAfterSeconds.toString(),
      availableOptions: TextLocalization.getPasscodeRequireAfterOptions(context),
    );
    return converter;
  }
}
