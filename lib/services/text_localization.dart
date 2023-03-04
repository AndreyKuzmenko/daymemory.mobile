import 'package:daymemory/services/settings_service/settings_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TextLocalization {
  static List<PasscodeRequireAfterOption> getPasscodeRequireAfterOptions(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return [
      PasscodeRequireAfterOption(title: locale.settings_passcode_time_immediately, seconds: 0),
      PasscodeRequireAfterOption(title: locale.settings_passcode_time_1minute, seconds: 60),
      PasscodeRequireAfterOption(title: locale.settings_passcode_time_3minutes, seconds: 3 * 60),
      PasscodeRequireAfterOption(title: locale.settings_passcode_time_5minutes, seconds: 5 * 60),
      PasscodeRequireAfterOption(title: locale.settings_passcode_time_10minutes, seconds: 10 * 60),
      PasscodeRequireAfterOption(title: locale.settings_passcode_time_30minutes, seconds: 30 * 60),
      PasscodeRequireAfterOption(title: locale.settings_passcode_time_1hour, seconds: 60 * 60),
    ];
  }
}
