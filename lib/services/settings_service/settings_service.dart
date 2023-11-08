import 'dart:convert';

import 'package:daymemory/data/dtos/language_dto.dart';
import 'package:daymemory/services/async_service_initializer.dart';
import 'package:daymemory/services/settings_service/storage_review_settings.dart';
import 'package:daymemory/services/settings_service/storage_user_info.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

enum BiometricsStoredConfigType { reset, fingerOrFace, skipped }

class PasscodeRequireAfterOption {
  final String title;
  final int seconds;

  PasscodeRequireAfterOption({required this.title, required this.seconds});
}

class UserSettings {
  String? accessToken;

  String? refreshToken;

  bool isEncryptionKeyLocked = false;

  String? pinCode;

  String? defaultNotebookId;

  bool isFirstRun = true;

  DateTime? lastSyncDate;

  bool? lastSyncStatus;

  bool isLocationSavingEnabled = false;

  bool isBiometricEnabled = false;

  bool isPasscodeEnabled = false;

  String? language;

  int passcodeRequireAfterSeconds = 0;

  bool isSyncEnabled = false;

  bool isEncryptionEnabled = false;

  UserSettings({
    this.accessToken,
    this.refreshToken,
    this.isEncryptionKeyLocked = false,
    this.pinCode,
    this.defaultNotebookId,
    this.isFirstRun = true,
    this.lastSyncDate,
    this.lastSyncStatus,
    this.isLocationSavingEnabled = false,
    this.isBiometricEnabled = false,
    this.isPasscodeEnabled = false,
    this.language,
    this.passcodeRequireAfterSeconds = 0,
    this.isSyncEnabled = false,
    this.isEncryptionEnabled = false,
  });

  factory UserSettings.fromJson(Map<String, dynamic> json) {
    return UserSettings(
      accessToken: json['accessToken'],
      refreshToken: json['refreshToken'],
      isEncryptionKeyLocked: json['isEncryptionKeyLocked'],
      pinCode: json['pinCode'],
      defaultNotebookId: json['defaultNotebookId'],
      isFirstRun: json['isFirstRun'],
      lastSyncDate: json['lastSyncDate'] != null ? DateTime.fromMillisecondsSinceEpoch(json['lastSyncDate']) : null,
      lastSyncStatus: json['lastSyncStatus'],
      isLocationSavingEnabled: json['isLocationSavingEnabled'],
      isBiometricEnabled: json['isBiometricEnabled'],
      isPasscodeEnabled: json['isPasscodeEnabled'],
      language: json['language'],
      passcodeRequireAfterSeconds: json['passcodeRequireAfterSeconds'],
      isSyncEnabled: json['isSyncEnabled'],
      isEncryptionEnabled: json['isEncryptionEnabled'],
    );
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json["accessToken"] = accessToken;
    json["refreshToken"] = refreshToken;
    json["isEncryptionKeyLocked"] = isEncryptionKeyLocked;
    json["pinCode"] = pinCode;
    json["defaultNotebookId"] = defaultNotebookId;
    json["isFirstRun"] = isFirstRun;
    json["lastSyncDate"] = lastSyncDate?.millisecondsSinceEpoch;
    json["lastSyncStatus"] = lastSyncStatus;
    json["isLocationSavingEnabled"] = isLocationSavingEnabled;
    json["isBiometricEnabled"] = isBiometricEnabled;
    json["isPasscodeEnabled"] = isPasscodeEnabled;
    json["language"] = language;
    json["passcodeRequireAfterSeconds"] = passcodeRequireAfterSeconds;
    json["isSyncEnabled"] = isSyncEnabled;
    json["isEncryptionEnabled"] = isEncryptionEnabled;

    return json;
  }
}

abstract class ISettingsService {
  Future<StorageUserInfo?> getUserInfo();

  Future setUserInfo(StorageUserInfo data);

  Future<StorageReviewSettings> getReviewSettings();

  Future setReviewSettings(StorageReviewSettings data);

  Future<UserSettings> getSettings();

  Future setSettings(UserSettings data);

  Future clearAll();

  List<LanguageDto> getAvailableLanguages();

  Future setBiometricType(BiometricsStoredConfigType flag);

  Future<BiometricsStoredConfigType> getBiometricType();

  //Secure
  Future<String?> getEncryptionKey();

  Future setEncryptionKey(String key);
}

class SettingsService implements ISettingsService, IAsyncServiceInitializer<ISettingsService> {
  final encryptionKey = 'ENCRYPTION_KEY';
  final userInfoKey = 'USER_INFO_KEY';
  final reviewSettingsKey = 'REVIEW_MEMORIES_SETTINGS_KEY';
  final settingsKey = 'USER_SETTINGS_KEY';
  final isBiometricEnabledKey = 'BIOMETRIC_KEY';

  late SharedPreferences _prefs;
  late FlutterSecureStorage _storage;

  SettingsService();

  @override
  Future<ISettingsService> init() async {
    _prefs = await SharedPreferences.getInstance();
    _storage = const FlutterSecureStorage();
    return this;
  }

  @override
  Future<BiometricsStoredConfigType> getBiometricType() async {
    final val = await _storage.read(key: isBiometricEnabledKey);

    if (val == null || val.isEmpty) {
      return BiometricsStoredConfigType.reset;
    }

    final type = BiometricsStoredConfigType.values.cast<BiometricsStoredConfigType?>().firstWhere((x) => x?.name == val, orElse: () => null);

    return type ?? BiometricsStoredConfigType.reset;
  }

  @override
  Future setBiometricType(BiometricsStoredConfigType? flag) => _storage.write(key: isBiometricEnabledKey, value: flag?.name);

  @override
  Future<String?> getEncryptionKey() => _storage.read(key: encryptionKey);

  @override
  Future setEncryptionKey(String key) => _storage.write(key: encryptionKey, value: key);

  @override
  Future<StorageUserInfo?> getUserInfo() async {
    return Future(() {
      var str = _prefs.getString(userInfoKey);
      if (str != null && str.isNotEmpty) {
        final parsed = json.decode(str).cast<String, dynamic>();
        return StorageUserInfo.fromJson(parsed);
      }
      return null;
    });
  }

  @override
  Future setUserInfo(StorageUserInfo data) async {
    var dic = data.toJson();
    final jsonString = json.encode(dic);
    await _prefs.setString(userInfoKey, jsonString);
  }

  @override
  Future<StorageReviewSettings> getReviewSettings() {
    return Future(() {
      var str = _prefs.getString(reviewSettingsKey);
      if (str != null && str.isNotEmpty) {
        final parsed = json.decode(str).cast<String, dynamic>();
        return StorageReviewSettings.fromJson(parsed);
      }
      return StorageReviewSettings(
        is10DaysEnabled: true,
        is1MonthEnabled: true,
        is3MonthsEnabled: true,
        is6MonthsEnabled: true,
        is7DaysEnabled: true,
        isYearlyEnabled: true,
      );
    });
  }

  @override
  Future setReviewSettings(StorageReviewSettings data) async {
    var dic = data.toJson();
    final jsonString = json.encode(dic);
    await _prefs.setString(reviewSettingsKey, jsonString);
  }

  @override
  Future<UserSettings> getSettings() {
    return Future(() {
      var str = _prefs.getString(settingsKey);
      if (str != null && str.isNotEmpty) {
        final parsed = json.decode(str).cast<String, dynamic>();
        return UserSettings.fromJson(parsed);
      }
      return UserSettings();
    });
  }

  @override
  Future setSettings(UserSettings data) async {
    var dic = data.toJson();
    final jsonString = json.encode(dic);
    await _prefs.setString(settingsKey, jsonString);
  }

  @override
  List<LanguageDto> getAvailableLanguages() {
    return [
      LanguageDto(code: "en", name: "English"),
      LanguageDto(code: "uk", name: "Українська"),
    ];
  }

  @override
  Future clearAll() async {
    await _prefs.clear();
    await _storage.deleteAll();
  }
}
