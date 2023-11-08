import 'package:daymemory/connector/encrytion_key_settings_connector/encrytion_key_settings_converter.dart';
import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/widget/settings/encryption_key_settings_view_model.dart';
import 'package:daymemory/widget/settings/encryption_key_settings_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../redux/state/states.dart';

class EncryptionKeySettingsConnector extends PageConnector<EncryptionKeySettingsViewModel, EncryptionKeySettingsConverter> {
  const EncryptionKeySettingsConnector({super.key});

  @override
  Widget buildWidget(BuildContext context, EncryptionKeySettingsViewModel viewModel) => EncryptionKeySettingsWidget(viewModel: viewModel);

  @override
  EncryptionKeySettingsConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final converter = EncryptionKeySettingsConverter(
      dispatch: dispatch,
      locale: AppLocalizations.of(context)!,
      encryptionKey: state.settingsState.encryptionKey,
      isSaving: false,
      isEncryptionKeyLocked: state.settingsState.isEncryptionKeyLocked,
    );
    return converter;
  }
}
