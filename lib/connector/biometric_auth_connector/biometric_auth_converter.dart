import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/redux/state/face_id_state/available_biometrics.dart';
import 'package:daymemory/widget/biometric_auth/biometric_auth_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../redux/action/face_id_action.dart';
import '../../widget/common/function_holder.dart';

class BiometricAuthConverter extends ViewModelConverter<BiometricAuthViewModel> {
  final Function(dynamic) dispatch;
  final AppLocalizations locale;
  final AvailableBiometrics availableBiometrics;

  BiometricAuthConverter({required this.dispatch, required this.locale, required this.availableBiometrics});

  @override
  BiometricAuthViewModel build() {
    return BiometricAuthViewModel(
      (b) => b
        ..subTitle = locale.biometric_auth_subtitle
        ..allowBiometricAuthTitle = locale.allow_biometric_auth
        ..skipTitle = locale.skip
        ..allowCommand = FunctionHolder(() => dispatch((AllowBiometricAction(
              reason: locale.biometrics_auth_reason,
              isEnabledFromSettings: false,
            ))))
        ..skipCommand = FunctionHolder(() {
          dispatch(SkipBiometricAction());
        }),
    );
  }
}
