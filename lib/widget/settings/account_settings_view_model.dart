import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';

part 'account_settings_view_model.g.dart';

abstract class AccountSettingsViewModel implements Built<AccountSettingsViewModel, AccountSettingsViewModelBuilder> {
  String get title;

  String get nameOptionTitle;

  String get nameOptionValue;

  String get emailOptionTitle;

  String get emailOptionValue;

  String get logoutOptionTitle;

  String get accountExplanation;

  FunctionHolder get logoutCommand;

  FunctionHolder get backCommand;

  AccountSettingsViewModel._();

  factory AccountSettingsViewModel([void Function(AccountSettingsViewModelBuilder)? updates]) = _$AccountSettingsViewModel;
}
