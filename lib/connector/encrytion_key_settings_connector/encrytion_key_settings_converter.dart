import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/settings_action.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/settings/encryption_key_settings_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EncryptionKeySettingsConverter extends ViewModelConverter<EncryptionKeySettingsViewModel> {
  final Function(dynamic) dispatch;

  final AppLocalizations locale;

  final String? encryptionKey;

  final bool isSaving;

  final bool isEncryptionKeyLocked;

  EncryptionKeySettingsConverter({
    required this.dispatch,
    required this.locale,
    required this.encryptionKey,
    required this.isSaving,
    required this.isEncryptionKeyLocked,
  });

  @override
  EncryptionKeySettingsViewModel build() {
    return EncryptionKeySettingsViewModel((b) => b
      ..encryptionKeyValue = encryptionKey
      ..isSaving = isSaving
      ..doneButtonTitle = locale.done_nav_button
      ..title = locale.settings_encryption_key_page_title
      ..copyToClipboardOptionTitle = locale.settings_encryption_key_copy_option
      ..encryptionKeyExplanation = locale.settings_encryption_key_explanation
      ..requiredFieldValidator = locale.required_field_validator
      ..encryptionKeyPlaceholder = locale.settings_encryption_key_placeholder
      ..requiredFieldValidator = locale.required_field_validator
      ..isEncryptionKeyLocked = isEncryptionKeyLocked
      ..saveCommand = TypedFunctionHolder<String>((key) {
        dispatch(SetEncryptionKeyAction(key: key, nextAction: PopBackStackAction()));
      })
      ..copyToClipboardCommand = TypedFunctionHolder<String>((text) {
        dispatch(CopyToClipboardAction(text: text));
      })
      ..closeCommand = FunctionHolder(() {
        dispatch(PopBackStackAction());
      }));
  }
}
