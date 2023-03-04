import 'package:daymemory/redux/state/face_id_state/available_biometrics.dart';

import 'common_action.dart';

class AllowBiometricAction implements ILoggingAction {
  final String reason;
  final bool isFaceIdAllowed;
  final bool isEnabledFromSettings;

  AllowBiometricAction({required this.reason, required this.isFaceIdAllowed, required this.isEnabledFromSettings});

  @override
  String toLogString() {
    return 'Allow Biometric Action, hideWithoutRedirect: $isEnabledFromSettings';
  }
}

class SkipBiometricAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Skip Biometric Action';
  }
}

class CheckBiometricTypeAction implements ILoggingAction {
  final dynamic nextAction;

  CheckBiometricTypeAction(this.nextAction);

  @override
  String toLogString() {
    return 'Check Biometric Type Action';
  }
}

class BiometricUsageAction implements ILoggingAction {
  final AvailableBiometrics availableBiometrics;

  BiometricUsageAction({required this.availableBiometrics});

  @override
  String toLogString() {
    return 'Biometric Usage Action';
  }
}

class BiometricNavigateAction implements ILoggingAction {
  final AvailableBiometrics availableBiometrics;

  BiometricNavigateAction({required this.availableBiometrics});

  @override
  String toLogString() {
    return 'Biometric Navigate Action';
  }
}
