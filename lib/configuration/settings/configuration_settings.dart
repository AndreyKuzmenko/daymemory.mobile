import 'package:built_value/built_value.dart';
import 'package:daymemory/configuration/type/configuration_type.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../configuration_const.dart';

part 'configuration_settings.g.dart';

abstract class ConfigurationSettings implements Built<ConfigurationSettings, ConfigurationSettingsBuilder> {
  ConfigurationType get type;

  String get appName;

  String get apiUrl;

  String get privacyPolicyUrl;

  String get termsOfUseUrl;

  String get defaultFont;

  int get syncDataIntervalSeconds;

  double get fullscreenMinWidth;

  double get sideMenuWidth;

  String get emailValidator;

  String get devContactEmail;

  String get encryptedText;

  String get mixPanelKey;

  ConfigurationSettings._();

  factory ConfigurationSettings([void Function(ConfigurationSettingsBuilder) updates]) = _$ConfigurationSettings;

  factory ConfigurationSettings.prepareForType(
    ConfigurationType type,
  ) =>
      ConfigurationSettings(
        (b) => b
          ..type = type
          ..appName = dotenv.env[ConfigurationConst.appName]
          ..apiUrl = dotenv.env[ConfigurationConst.apiUrl]
          ..mixPanelKey = dotenv.env[ConfigurationConst.mixPanelKey]
          ..encryptedText = dotenv.env[ConfigurationConst.encryptedText]
          ..devContactEmail = dotenv.env[ConfigurationConst.devContactEmail]
          ..defaultFont = dotenv.env[ConfigurationConst.defaultFont]
          ..privacyPolicyUrl = dotenv.env[ConfigurationConst.privacyPolicyUrl]
          ..termsOfUseUrl = dotenv.env[ConfigurationConst.termsOfUseUrl]
          ..fullscreenMinWidth = double.parse(dotenv.env[ConfigurationConst.fullscreenMinWidth]!)
          ..sideMenuWidth = double.parse(dotenv.env[ConfigurationConst.sideMenuWidth]!)
          ..syncDataIntervalSeconds = int.parse(dotenv.env[ConfigurationConst.syncDataIntervalSeconds]!)
          ..emailValidator = dotenv.env[ConfigurationConst.emailValidator],
      );
}
