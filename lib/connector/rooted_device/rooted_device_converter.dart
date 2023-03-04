import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/widget/access_denied/access_denied_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RootedDeviceConverter extends ViewModelConverter<AccessDeniedViewModel> {
  final AppLocalizations locale;

  RootedDeviceConverter({
    required this.locale,
  });

  @override
  AccessDeniedViewModel build() {
    return AccessDeniedViewModel((b) => b
      ..title = locale.jailbrakeTitle
      ..message = locale.jailbrakeMessage);
  }
}
