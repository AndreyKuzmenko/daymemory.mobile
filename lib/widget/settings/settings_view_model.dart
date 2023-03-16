import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';

part 'settings_view_model.g.dart';

abstract class SettingsViewModel implements Built<SettingsViewModel, SettingsViewModelBuilder> {
  String get title;

  String get selectedLanguage;

  String get selectLanguageOptionTitle;

  String get showInReviewOptionTitle;

  String get reviewPeriodOptionTitle;

  FunctionHolder get reviewPeriodCommand;

  FunctionHolder get languageSelectorCommand;

  FunctionHolder get showInReviewCommand;

  String get tagsOptionTitle;

  FunctionHolder get tagsCommand;

  String get privacyPolicyUrl;

  String get privacyPolicyOptionTitle;

  String get introOptionTitle;

  FunctionHolder get introCommand;

  bool get isAuthenticated;

  String? get userName;

  String get signinOptionTitle;

  FunctionHolder get accountCommand;

  String get syncOptionTitle;

  String get syncStatus;

  bool get hasSyncFailed;

  FunctionHolder get syncCommand;

  String get locationOptionTitle;

  FunctionHolder get locationToogleCommand;

  bool get isLocationEnabled;

  bool get isLocationVisible;

  String get passcodeOptionTitle;

  FunctionHolder get passcodeCommand;

  String get screenBlockingExplanation;

  String get showInReviewExplanation;

  String get clearDataOptionTitle;

  FunctionHolder get clearDataCommand;

  String get clearDataExplanation;

  FunctionHolder get backCommand;

  SettingsViewModel._();

  factory SettingsViewModel([void Function(SettingsViewModelBuilder)? updates]) = _$SettingsViewModel;
}
