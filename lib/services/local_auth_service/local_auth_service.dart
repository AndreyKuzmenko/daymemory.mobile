import 'package:local_auth/local_auth.dart';

abstract class ILocalAuthService {
  Future<bool> get canCheckBiometrics;

  Future<bool> get isDeviceSupported;

  Future<List<BiometricType>> get biometrics;

  Future<bool> authenticate(String reason);
}

class LocalAuthService implements ILocalAuthService {
  final LocalAuthentication _localAuth = LocalAuthentication();

  @override
  Future<bool> get canCheckBiometrics => _localAuth.canCheckBiometrics;

  @override
  Future<bool> get isDeviceSupported => _localAuth.isDeviceSupported();

  @override
  Future<bool> authenticate(String reason) async => _localAuth.authenticate(
        localizedReason: reason,
        options: const AuthenticationOptions(biometricOnly: true),
      );

  @override
  Future<List<BiometricType>> get biometrics =>
      _localAuth.getAvailableBiometrics();
}
