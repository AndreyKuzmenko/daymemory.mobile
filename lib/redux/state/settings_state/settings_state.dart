import 'package:built_value/built_value.dart';
import 'package:daymemory/data/dtos/language_dto.dart';
import 'package:daymemory/services/settings_service/storage_review_settings.dart';

part 'settings_state.g.dart';

abstract class SettingsState implements Built<SettingsState, SettingsStateBuilder> {
  bool get isLocationSavingEnabled;

  bool get isBiometricEnabled;

  bool get isBiometricActive;

  bool get isBiometricAvailable;

  bool get isPasscodeEnabled;

  int get themeMode;

  StorageReviewSettings get reviewSettings;

  String get language;

  int get passcodeRequireAfterSeconds;

  String? get encryptionKey;

  bool get isSyncEnabled;

  bool get isEncryptionKeyLocked;

  List<LanguageDto> get availableLanguages;

  SettingsState._();

  factory SettingsState([void Function(SettingsStateBuilder) updates]) = _$SettingsState;

  factory SettingsState.initial() => SettingsState((b) => b
    ..isLocationSavingEnabled = false
    ..isBiometricEnabled = false
    ..isBiometricActive = false
    ..isBiometricAvailable = false
    ..language = ""
    ..themeMode = 0
    ..encryptionKey = null
    ..isSyncEnabled = false
    ..isEncryptionKeyLocked = false
    ..passcodeRequireAfterSeconds = 0
    ..reviewSettings = StorageReviewSettings(
      is10DaysEnabled: true,
      is1MonthEnabled: true,
      is3MonthsEnabled: true,
      is6MonthsEnabled: true,
      is7DaysEnabled: true,
      isYearlyEnabled: true,
    )
    ..availableLanguages = []
    ..isPasscodeEnabled = false);
}
