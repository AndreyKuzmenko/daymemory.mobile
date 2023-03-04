import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';

part 'sync_settings_view_model.g.dart';

abstract class SyncSettingsViewModel implements Built<SyncSettingsViewModel, SyncSettingsViewModelBuilder> {
  String get title;

  String get syncOptionTitle;

  String get syncStatus;

  String get enableEncryptionOptionExplanation;

  String get enableEncryptionOptionTitle;

  FunctionHolder get encryptionCommand;

  bool get isEncryptionEnabled;

  bool get isSyncEnabled;

  bool get isSyncing;

  String? get lastSyncStatusMessage;

  String get syncStateOptionTitle;

  String get syncStateExplanation;

  FunctionHolder get syncStateCommand;

  FunctionHolder get syncStartCommand;

  FunctionHolder get backCommand;

  SyncSettingsViewModel._();

  factory SyncSettingsViewModel([void Function(SyncSettingsViewModelBuilder)? updates]) = _$SyncSettingsViewModel;
}
