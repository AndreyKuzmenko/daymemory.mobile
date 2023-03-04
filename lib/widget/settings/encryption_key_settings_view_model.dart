import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';

part 'encryption_key_settings_view_model.g.dart';

abstract class EncryptionKeySettingsViewModel implements Built<EncryptionKeySettingsViewModel, EncryptionKeySettingsViewModelBuilder> {
  String get title;

  String? get encryptionKeyValue;

  String get requiredFieldValidator;

  String get encryptionKeyPlaceholder;

  String get encryptionKeyExplanation;

  String get copyToClipboardOptionTitle;

  TypedFunctionHolder<String> get copyToClipboardCommand;

  bool get isSaving;

  bool get isEncryptionKeyLocked;

  String get doneButtonTitle;

  TypedFunctionHolder<String> get saveCommand;

  FunctionHolder get closeCommand;

  EncryptionKeySettingsViewModel._();

  factory EncryptionKeySettingsViewModel([void Function(EncryptionKeySettingsViewModelBuilder)? updates]) = _$EncryptionKeySettingsViewModel;
}
